import json

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

def creates_files(nums, data):
    if n==0:

print("Successful!")