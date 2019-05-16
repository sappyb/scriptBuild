# -*- coding: utf-8 -*-

# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import os
import re

def giveList(a, b):
    a.extend(b)
    return a

regex_1 = re.compile('Time elapsed per iteration .* (\d+.\d+)')
dir = "/Users/saptarshibhowmik/Documents/workload1-1-linear-1"
filenames = [i for i in os.listdir(dir) if i.startswith('out_')]
listp = [i.split('_') for i in filenames]
timePerIter = []
finallist = []
for i in filenames:
    with open(str(dir+'/'+i)) as fp:
        lines = fp.readlines()
        for line in lines:
            l = regex_1.findall(line)
            if l:
                timePerIter.append(l)

c = [giveList(f,b) for f, b in zip(listp, timePerIter)]

print(c)