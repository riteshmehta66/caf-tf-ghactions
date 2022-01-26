from typing import Pattern
import jinja2
import json
import argparse
import os, fnmatch


parser = argparse.ArgumentParser()
parser.add_argument("-e", "--environment", help = "Type of Environemt")
parser.add_argument("-p", "--path", help = "Path to replace variables")


args = parser.parse_args()
# Config file name
config_file = "config.json"
# add File pattern you want to be replace
filelepatterns = ["*.tfvars","*.json","*.tf"]
replace_path = args.path or "./"

with open(config_file) as json_file:
    configs = json.load(json_file)
    final= configs[args.environment]


def findReplace(directory, filePattern):
    for path, dirs, files in os.walk(os.path.relpath(directory)):
        for filename in fnmatch.filter(files, filePattern):
            filepath = os.path.join(path, filename)
            unixpath = filepath.replace("\\",'/')
            templateLoader = jinja2.FileSystemLoader(searchpath="./")
            templateEnv = jinja2.Environment(loader=templateLoader)
            TEMPLATE_FILE = unixpath
            template = templateEnv.get_template(TEMPLATE_FILE)
            output_from_parsed_template = template.render(configs = final)
            with open(filepath, "w") as f:
                f.write(output_from_parsed_template)
            print(unixpath)


for patt in filelepatterns:
  findReplace(replace_path,patt)