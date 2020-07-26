import json
import jsonpath

def read_from_json(locator):
    file = open("C:\\Users\\Admin\\PycharmProjects\\FirstFramework\\ObjectRepository\\ObjectRepository.json")
    file1 = file.read()
    fileresponse = json.loads(file1)
    value = jsonpath.jsonpath(fileresponse, locator)
    return value[0]