Python 3.11.5 (tags/v3.11.5:cce6ba9, Aug 24 2023, 14:38:34) [MSC v.1936 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
import numpy as np
#Rafaela Pineheiro 205093

#1
ra = np.array(2,0,5,0,9,3)

#2
matriz = np.array(([5,8,7,12],[4,7,2,21],[9,11,4,7]))

#3
matriz2 = np.zeros((3,4,3))
matriz2[0,2,2] = 5
matriz2[1,2,2] = 5
matriz2[2,2,2] = 5

#4
vetor = np.arange(5,25,0.2,float)

#5
vetor2 = np.linspace(0,3,27)

#6
vetor3 = np.arange(100,301)
                         
vetor3[vetor3%7 ==0]

#7

#array = np.arange(1,37).reshape(3,4,3)

rng = np.random.default_rng()
array = rng.integers(1,36,(3,4,3))
array.sum()
array.mean()
