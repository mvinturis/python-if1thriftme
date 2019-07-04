import os
import re
import json
import subprocess
from LocateModules import LocateModules
from BuildSwigIdl import BuildSwigIdl
from SetupPackage import SetupPackage

class BuildIF1Package:
    def __init__(self):
        self.test_clients_path = "../../../SourceSpace/IF1ThriftMeClients"
        self.modules_details_file = "modules_details.json"
        self.package_folder = os.path.abspath("package")
        self.package = "if1thriftme"
        self.license = "Visteon 2019 license"
        self.description = self.package + """
""" + ("=" * len(self.package)) + """

""" + self.package + """ provides an object-oriented API for IF1 ThriftMe interfaces for MRA2 project.
The provided modules were generated with SWIG (http://www.swig.org/Doc1.3/Python.html) and
extended/customized in order to make them simple to use by dev teams.

Usage example:

.. code-block:: python
    from """ + self.package + """ import PlayerService
    from PlayerService import GeneralPlayerServiceClient

    player = GeneralPlayerServiceClient.createClient("tcp://127.0.0.1:20131/#0")
    print "Entertainment player version: " + player.getClientVersion()

"""

    def run(self):
        self.locate_modules()
        self.build_swig_idl()
        self.move_module_wrappers()
        self.configure_cpp_modules()
        self.compile_cpp_modules()
        self.setup_package()

    def locate_modules(self):
        locateModules = LocateModules(self.test_clients_path, self.modules_details_file)
        self.modules_details = locateModules.run()

    def build_swig_idl(self):
        build = BuildSwigIdl(self.modules_details_file)
        build.run()
        self.idl_path = build.get_idl_path()

    def move_module_wrappers(self):
        if not os.path.isdir(self.package_folder):
            os.makedirs(self.package_folder)

        current_dir = os.getcwd()
        os.chdir(self.idl_path)

        for module, module_details in self.modules_details.items():
            wrap_dest_dir = module_details["source"]

            bashCommand = "mv -f " + module + ".py " + self.package_folder + "/" + module + ".py"
            print bashCommand
            process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE, stdin=subprocess.PIPE)
            output, error = process.communicate()

            bashCommand = "mv -f " + module + "_wrap.h ../" + wrap_dest_dir + "/" + module + "_wrap.h"
            print bashCommand
            process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE, stdin=subprocess.PIPE)
            output, error = process.communicate()

            bashCommand = "mv -f " + module + "_wrap.cpp ../" + wrap_dest_dir + "/" + module + "_wrap.cpp"
            print bashCommand
            process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE, stdin=subprocess.PIPE)
            output, error = process.communicate()

        os.chdir(current_dir)

    def configure_cpp_modules(self):
        self.patternSharedLibs = re.compile("\n[^\n]*bun\.setLibType.*SHARED[^\n]*(\n|$)")
        self.patternPythonIncludes = re.compile("\n[^\n]*bunAndDependers\.addCompilerOptions[^\n]*(\n|$)")
        self.patternPythonLibs = re.compile("\n[^\n]*bunAndDependers\.addLinkerOptions[^\n]*(\n|$)")

        for module, details in self.modules_details.items():
            self.configure_module_root_bunion(module, details)
            self.configure_module_private_bunion(module, details)

    def configure_module_root_bunion(self, module, details):
        content = ""
        input_bunion = details["source"] + "/../../build/" + module + ".bunion"
        with open(input_bunion) as content_file:
            content = content_file.read()

        # remove python patterns
        content = self.patternSharedLibs.sub("", content, 0)
        content = self.patternPythonIncludes.sub("", content, 0)
        content = self.patternPythonLibs.sub("", content, 0)

        content += """
bun.setLibType(SHARED)

bunAndDependers.addCompilerOptions('C++', '-fpermissive', '$$(python-config --includes)')

bunAndDependers.addLinkerOptions('-lpython2.7 -lpthread -ldl  -lutil -lm')
"""
        # store output bunion file
        with open(input_bunion, 'w') as output_file:
            output_file.write(content)

    def configure_module_private_bunion(self, module, details):
        patternAddSourceWrapper = re.compile("\n[^\n]*bun.addSources.*" + module + "_wrap\.cpp[^\n]*\n")

        content = ""
        input_bunion = details["source"] + "/../build/" + module + ".bunion"
        with open(input_bunion) as content_file:
            content = content_file.read()

        addAddSourceWrapperFlag = False
        match = patternAddSourceWrapper.search(content, re.MULTILINE)
        if match == None:
            addAddSourceWrapperFlag = True

        if addAddSourceWrapperFlag:
            content += "\nbun.addSources('" + module + "_wrap.cpp')\n"

        # store output bunion file
        with open(input_bunion, 'w') as output_file:
            output_file.write(content)

    def compile_cpp_modules(self):
        copyThriftMeLib = True
        changeDirToBuildRoot = True
        for module, details in self.modules_details.items():
            if changeDirToBuildRoot:
                changeDirToBuildRoot = False
                root_folder = details["source"] + "/../../../../../"
                os.chdir(root_folder)
                # print root_folder

            bashCommand = "./Tools/Bunny/Bunny/bin/BunnyBuild IF1ThriftMeFull." + module + " X64Lin.Dbg -c build"
            print bashCommand
            process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE, stdin=subprocess.PIPE)
            output, error = process.communicate()

            # copy module lib to package folder
            bashCommand = "cp ProductSpace/X64Lin.Dbg/IF1ThriftMeFull/" + module + "/bin/lib" + module + ".so " + self.package_folder + "/"
            print bashCommand
            process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE, stdin=subprocess.PIPE)
            output, error = process.communicate()

            if copyThriftMeLib:
                copyThriftMeLib = False

                # copy libThriftMe lib dependency to package folder
                bashCommand = "cp ProductSpace/X64Lin.Dbg/ThriftMe/ThriftMe/bin/libThriftMe.so " + self.package_folder + "/"
                print bashCommand
                process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE, stdin=subprocess.PIPE)
                output, error = process.communicate()

    def setup_package(self):
        build = SetupPackage(self.package, self.description, self.license, self.package_folder)
        build.setup()
        build.install()

def main():
    build = BuildIF1Package()
    build.run()

main()
