import json

def def_word_cnt(string):
    dict = {}
    for word in string.strip().split():
        if word in dict:
            dict[word] += 1
        else:
            dict[word] = 1
    return dict

string = "hello world hello"
result = def_word_cnt(string)
with open