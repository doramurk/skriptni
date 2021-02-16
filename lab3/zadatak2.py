#!/usr/bin/env python
import numpy as np

ul = open('ulaz.txt', 'r')
print("Hyp#Q10#Q20#Q30#Q40#Q50#Q60#Q70#Q80#Q90")
line = ul.readline()
i = 1
while line != '':
    line = line.strip()
    numbers = line.split(' ')
    numbers.sort(key=float)
    size = len(numbers)
    print("%03d" % (i), end='')
    for q in np.arange(0.1, 0.9, 0.1):
        number = min(int(round(q*size)), size-1)
        print("#"+str(numbers[number]), end='')
    print("\n")
    i += 1
    line = ul.readline()

ul.close()
