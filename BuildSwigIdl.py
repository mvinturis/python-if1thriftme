import os
import json
import subprocess

class BuildSwigIdl:
    def __init__(self, modules_details_file):
        self.modules_details = json.load(open(modules_details_file))
        self.idl_path = "swig-idl"
        self.patch_path = "swig-patch"
        self.module_patches = []

        files = os.listdir(self.patch_path)
        for f in files:
            if f.endswith("-patch.i"):
                self.module_patches.append(f[:-8])

    def run(self):
        if not os.path.isdir(self.idl_path):
            os.makedirs(self.idl_path)

        self.generate_swig_idl_files()
        self.compile_swig_idl()

    def get_idl_path(self):
        return self.idl_path

    def generate_swig_idl_files(self):
        for module, details in self.modules_details.items():
            self.generate_swig_idl(module, details)

    def generate_swig_idl(self, module, module_details):
        idl_file = os.path.join(self.idl_path, module) + ".i"
        module_details["idl_file"] = idl_file

        out = open(idl_file, 'w')
        out.write(
"""%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import lib""" + module + """
else:
    import lib""" + module + """\") """ + module + """

""")
        for service, header in module_details["headers"].items():
            out.write("%feature(\"director\") " + module_details["namespace"] + "::" + service + "Client;\n")

        out.write("""
%begin %{
#define SWIG_PYTHON_2_UNICODE
%}

%include <std_vector.i>
%include <std_string.i>
%include <std_shared_ptr.i>
%include <std_unordered_map.i>
%include <std_unordered_set.i>

%include "../swig-patch/Common-patch.i"
%include "../swig-patch/TDeferredResponse-patch.i"
""")

        if module in self.module_patches:
            out.write("""%include "../swig-patch/""" + module + """-patch.i"
""")
        out.write("\n")

        support_types_headers = self.find_support_types_headers(module, module_details)
        for header in support_types_headers:
            out.write("""%include "../../../../SourceSpace/""" + header + """"
""")

        out.write("""
%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
""")
        for service, header in module_details["headers"].items():
            out.write("%include \"../" + header + "\"\n")

        out.write("""
%{
""")
        for service, header in module_details["headers"].items():
            out.write("#include \"../" + header + "\"\n")

        out.write("""%}

%inline %{""")

        for service, header in module_details["headers"].items():
            module_client = module_details["namespace"] + "::" + service + "Client"

            out.write("""
""" + module_client + """*
""" + service + """Client_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< """ + module_client + """ > client = """ + module_client + """::createClient(broker, address);

    ::thrift::shared_ptr< """ + module_client + """ > shared_ptr_eraser(nullptr, 
        [](""" + module_client + """ *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void """ + service + """Client_waitForConnection(""" + module_client + """ *self)
{
    self->getTransport()->waitForConnection();
}
""")
        out.write("""%}

%pythoncode %{""")
        for service, header in module_details["headers"].items():
            out.write("""
@staticmethod
def static_""" + service + """Client_createSimpleClient(address):
    return lib""" + module + """.""" + service + """Client_createSimpleClient(address)
""" + service + """Client.createClient = static_""" + service + """Client_createSimpleClient

def """ + service + """Client_waitForConnection(self):
    return lib""" + module + """.""" + service + """Client_waitForConnection(self)
""" + service + """Client.waitForConnection = """ + service + """Client_waitForConnection
""")
        out.write("""%}
""")
        out.close()

    def compile_swig_idl(self):
        current_dir = os.getcwd()
        os.chdir(self.idl_path)
        for module, module_details in self.modules_details.items():
            idl_file = os.path.basename(module_details["idl_file"])

            bashCommand = "swig -w312,315,317,325,401,509 -python -c++ -cppext cpp -interface lib" + idl_file[:-2] + " " + idl_file
            print bashCommand
            process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE, stdin=subprocess.PIPE)
            output, error = process.communicate()

        os.chdir(current_dir)

    def find_support_types_headers(self, module, details):
        support_types_headers = []
        for service, header in details["headers"].items():
            with open(header) as f:
                lines = f.read().split('\n')
                for line in lines:
                    if line.startswith("#include <IF1ThriftMeFull"):
                        line = line[line.find('<') + 1 : line.rfind('>')]
                        if line not in support_types_headers:
                            support_types_headers.append(line)
                    if line.startswith("namespace"):
                        break
        return support_types_headers
