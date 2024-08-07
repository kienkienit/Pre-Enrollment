import json

def def_word_cnt(string):
    dict = {}
    for word in string.trim.split():
        if word in dict:
            dict[word] += 1
        else:
            dict[word] = 1
    return dict

def