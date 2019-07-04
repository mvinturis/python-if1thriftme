import os
import json
import subprocess

class LocateModules:
    def __init__(self, test_clients_path, modules_details_file):
        self.test_clients_path = test_clients_path
        self.modules_details_file = modules_details_file
        modules_details = {}

    def run(self):
        self.test_clients = self.list_test_clients()
        self.services = self.parse_services()
        self.modules_details = self.locate_source_files()

        with open(self.modules_details_file, 'w') as out:
            out.write(json.dumps(self.modules_details, indent=2))

        return self.modules_details

    def list_test_clients(self):
        current_dir = os.getcwd()
        os.chdir(self.test_clients_path)

        process = subprocess.Popen(['ls', '-x'], stdout=subprocess.PIPE, stdin=subprocess.PIPE)
        output, error = process.communicate()

        os.chdir(current_dir)

        return output.split()
    
    def parse_services(self):
        services = {}

        for data in self.test_clients:
            tokens = data.split('__')
            if len(tokens) < 2:
                continue
            name = tokens[0]

            tokens = tokens[1].split('_')
            if len(tokens) < 2:
                continue

            namespace = tokens[0] + "::" + tokens[1]
            services[name] = namespace

        return services

    def locate_source_files(self):
        modules_details = {}
        services_list = self.services.keys()
        modules_path = os.path.dirname(self.test_clients_path) + "/IF1ThriftMeFull/"
        for root, dirs, files in os.walk(modules_path):
            if root.endswith("/inc"):
                for name in files:
                    if name.endswith((".h")):
                        if name[:-2] in services_list:
                            service = name[:-2]
                            module_name = root.split("/")[-2]
                            if module_name not in modules_details:
                                modules_details[module_name] = {}
                                modules_details[module_name]["namespace"] = self.services[service]
                                modules_details[module_name]["headers"] = {}
                            # print os.path.join(root, name)
                            modules_details[module_name]["headers"][service] = os.path.join(root, name)
            if root.endswith("/private/src"):
                for name in files:
                    if name.endswith((".cpp")):
                        if name[:-4] in services_list:
                            service = name[:-4]
                            module_name = root.split("/")[-3]
                            if module_name not in modules_details:
                                modules_details[module_name] = {}
                            # print os.path.join(root, name)
                            if "source" not in modules_details[module_name]:
                                modules_details[module_name]["source"] = root
        return modules_details
