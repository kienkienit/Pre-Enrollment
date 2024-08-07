import json, os

def def_word_cnt(string):
    dict = {}
    for word in string.strip().split():
        if word in dict:
            dict[word] += 1
        else:
            dict[word] = 1
    return dict

string = "data engineering is awesome"
result = def_word_cnt(string)

os.makedirs('json', exist_ok=True)

def creates_files(nums, data):
    if nums == 0:
        return
    file_name = os.path.join('json', f"result_{nums}.json")
    with open(file_name, "w") as json_file:
        json.dump(data, json_file)
    creates_files(nums - 1, data)

nums = 100
creates_files(nums, result)

print("Successful!")