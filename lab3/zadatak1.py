#!/usr/bin/env python
import numpy as np


def ucitaj():
    matrica = {}
    dimenzija = 0
    while True:
        line = ul.readline()
        parts = line.split(' ')
        if line == "\n" or line == '':
            return dimenzija, matrica
        elif len(parts) == 2:
            dimenzija = (parts[0], parts[1].strip())
        else:
            matrica[(parts[0], parts[1])] = float(parts[2])

def pomnozi(m1, m2):
    pomnozena = {}
    mat1 = np.zeros((int(dim1[0]), int(dim1[1])))
    for redak in range(0, int(dim1[0])):
        for stupac in range(0, int(dim1[1])):
            if (str(redak), str(stupac)) in m1.keys():
                mat1[redak][stupac] = float(m1[(str(redak), str(stupac))])
            else:
                mat1[redak][stupac] = 0

    mat2 = np.zeros((int(dim2[0]), int(dim2[1])))
    for redak in range(0, int(dim2[0])):
        for stupac in range(0, int(dim2[1])):
            if (str(redak), str(stupac)) in m2.keys():
                mat2[redak][stupac] = float(m2[(str(redak), str(stupac))])
            else:
                mat2[redak][stupac] = 0

    pomnozena = np.dot(mat1, mat2)
    return pomnozena

ul = open('matrice.txt', 'r')

dim1, matrica1 = ucitaj()
dim2, matrica2 = ucitaj()

dimPomnozena = (dim1[0], dim2[1])

if dim1[1] == dim2[0]:
    if dim1[0] != 0 and dim1[1] != 0 and dim2[0] != 0 and dim2[1] != 0:
        pomnozena = pomnozi(matrica1, matrica2)
        print(pomnozena)
        nova = open("umnozak.txt", "w")
        nova.write(str(dimPomnozena[0]) + " " + str(dimPomnozena[1]) + "\n")
        for red in range(0, int(dimPomnozena[0])):
            for stupac in range(0, int(dimPomnozena[1])):
                if pomnozena[(red, stupac)] == 0:
                    continue
                else:
                    nova.write(str(red) + " " + str(stupac) + " " + str(pomnozena[(red, stupac)]) + "\n")
            print("")
        nova.close()

        ul.close()
        del pomnozena
    else:
        exit(1)
