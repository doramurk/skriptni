#!/usr/bin/env python
import os

students = open('studenti.txt', 'r')
#Read student list

student_names = {}

#Read student names
while True:
    line = students.readline()
    line = line.strip('\n')
    if line == '':
        break
    jmbag, name = line.split(' ')[0], str(line.split(' ')[1]+" "+line.split(' ')[2])
    student_names[jmbag] = name

#Read labs
datoteke = os.listdir("./datoteke")
labs = dict()
for j in student_names.keys():
    labs[j] = dict()

for dat in datoteke:
    labos = int(dat.split('_')[1])
    datoteka = open('datoteke/' + dat, 'r')
    while True:
        line = datoteka.readline()
        line = line.strip('\n')
        if line == '':
            break
        jmbag, bodovi = (line.split(' ')[0], line.split(' ')[1])

        if jmbag in labs.keys() and labos in labs[jmbag]:
                print("Upozorenje! {} lab:{}".format(jmbag, labos))
        else:
            labs[jmbag][labos] = bodovi

        """if labos in labs.keys() and jmbag in labs[labos]:
                print("Upozorenje! {} lab:{}".format(jmbag, labos))
        else:
            labs[labos][jmbag] = bodovi"""

print("|{:<13s}|{:<20s}|{:^8s}|{:^8s}|{:^8s}|".format("JMBAG", "Prezime, Ime", "L1", "L2", "L3"))
for key in labs.keys():
    jmbag = key
    ime = student_names[jmbag]
    if 1 in labs[jmbag].keys():
        L1 = labs[jmbag][1]
    else:
        L1 = str(0)
    if 2 in labs[jmbag].keys():
        L2 = labs[jmbag][2]
    else:
        L2 = str(0)
    if 3 in labs[jmbag].keys():
        L3 = labs[jmbag][3]
    else:
        L3 = str(0)
    print("|{:<13s}|{:<20s}|{:^8s}|{:^8s}|{:^8s}|".format(jmbag, ime, L1, L2, L3))