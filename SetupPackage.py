import os
import json
import shutil
import subprocess

class SetupPackage:
    def __init__(self, package, description, license, basepath):
        self.package = package
        self.description = description
        self.license = license
        self.basepath = basepath
        self.package_root = basepath + "/" + self.package
        self.modules_path = os.path.join(self.package_root, self.package)

    def setup(self):
        self.create_folder_structure()
        self.move_modules_to_package()
        self.create__init__py()
        self.create_setup_py()
        self.create_readme_rst()
        self.build_distribution()

    def install(self):
        current_dir = os.getcwd()
        os.chdir(self.package_root)

        bashCommand = "sudo python setup.py install"
        print bashCommand
        process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE, stdin=subprocess.PIPE)
        output, error = process.communicate()
        print output

        os.chdir(current_dir)

    def create_folder_structure(self):
        if not os.path.isdir(self.modules_path):
            os.makedirs(self.modules_path)

    def move_modules_to_package(self):
        files = os.listdir(self.basepath)
        for f in files:
            if f.endswith(".py") or f.endswith(".so"):
                bashCommand = "mv -f " + self.basepath + "/" + f + " " + self.modules_path
                print bashCommand
                process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE, stdin=subprocess.PIPE)
                output, error = process.communicate()

    def create_readme_rst(self):
        with open(os.path.join(self.package_root, "README.rst"), "w") as f:
            f.write(self.description)

    def create__init__py(self):
        modules = []

        files = os.listdir(self.modules_path)
        for f in files:
            if f.endswith(".py"):
                modules.append(f[:-3])

        with open(os.path.join(self.modules_path, "__init__.py"), "w") as f:
            for module in modules:
                f.write("import " + module + "\n")

    def create_setup_py(self):
        package_data = { self.package : [] }

        files = os.listdir(self.modules_path)
        for f in files:
            if f.endswith(".so"):
                package_data[self.package].append(f)

        with open(os.path.join(self.package_root, "setup.py"), "w") as f:
            f.write(
"""import os
import sys
import site
import subprocess
from distutils.core import setup

setup(
    name='""" + self.package + """',
    version='1.0',
    author='Visteon',
    author_email='mvinturi@visteon.com',
    license='""" + self.license + """',
    packages=['""" + self.package + """'],
    package_data=""" + json.dumps(package_data, indent=2) + """,
    data_files=[('share/doc/""" + self.package + """', ['README.rst'])],
    long_description=open('README.rst').read()
)

def install_lib_location():
    for site_path in site.getsitepackages():
        for root, dirs, files in os.walk(site_path):
            if '""" + self.package + """' in dirs:
                package_install_dir = os.path.join(root, '""" + self.package + """')
                break
        if package_install_dir:
            break
    ld_config_path = '/etc/ld.so.conf.d/'
    conf = '""" + self.package + """.conf'
    with open(os.path.join(ld_config_path, conf), 'w') as f:
        f.write(package_install_dir)

    bashCommand = 'sudo ldconfig'
    print bashCommand
    process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE, stdin=subprocess.PIPE)
    output, error = process.communicate()
    print output

if len(sys.argv) >= 2 and sys.argv[1] == 'install':
    install_lib_location()
""")

    def build_distribution(self):
        current_dir = os.getcwd()
        os.chdir(self.package_root)

        bashCommand = "sudo python setup.py sdist"
        print bashCommand
        process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE, stdin=subprocess.PIPE)
        output, error = process.communicate()
        print output

        os.chdir(current_dir)
