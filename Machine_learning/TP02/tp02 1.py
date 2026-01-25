import matplotlib.pyplot as plt
import numpy as np

#Nome: Rafaela da Silva Pinheiro
#RA: 205093

#Exercicio 1
plt.plot([17,21,35,45,50,63,68,73,76,81], [1020,1800,4550,3600,5200,700,2140,4500,600,3200], color="red",  marker="o")

plt.title("Exercício 1", fontsize=24, color='#000')

plt.xlabel("Idade", fontsize=24, color='#F00')
plt.ylabel("Renda", fontsize=24, color='#F0F')


plt.show()

#Exercicio 2
X1 = [20, 19, 35, 2, 18, 38, 25, 20, 5, 33, 36, 23, 8, 29, 28, 25, 40, 2, 24, 43, 49, 26, 35, 35, 3, 45, 10, 43, 28, 7, 20, 31, 8, 16, 19, 45, 13, 49, 41, 13]
Y1 = [139, 691, 200, 729, 566, 533, 963, 103, 371, 209, 302, 591, 966, 388, 938, 441, 580, 503, 774, 951, 693, 629, 184, 357, 711, 826, 222, 150, 200, 736, 143, 469, 669, 581, 186, 860, 748, 508, 313, 511]
X2 = [15, 10, 48, 3, 20, 31, 6, 7, 39, 22, 46, 25, 2, 11, 47, 20, 30, 48, 12, 22, 5, 44, 47, 28, 26, 40, 20, 18, 38, 12, 17, 23, 26, 17, 37, 46, 3, 45, 47, 36]
Y2 = [435, 662, 711, 182, 417, 782, 755, 477, 735, 405, 876, 247, 152, 258, 119, 662, 715, 255, 703, 780, 744, 205, 194, 664, 503, 339, 225, 464, 229, 272, 833, 346, 447, 424, 797, 505, 773, 950, 681, 278]

plt.scatter(X1, Y1, color="red",  marker="o")
plt.scatter(X2, Y2, color="green",  marker="s")

plt.title("Exercício 2", fontsize=24, color='#000')

plt.show()

#Exercicio 3
legendas = ["A","B","C","D","E","F","G","H"]
valores = [23,13,26,9,57,32,18,44]

plt.title("Exercício 3", fontsize=24, color='#000')
plt.bar(legendas, valores, color="red")
plt.show()

plt.title("Exercício 3", fontsize=24, color='#000')
plt.pie(valores, labels=legendas)
plt.show()

#Exercicio 4
rng = np.random.default_rng()

array = rng.integers(1,51,500)

plt.hist(array, [3,6,9,12,15,18,21,24,27,30,33,36,39,42,50], edgecolor="red")
plt.title("Exercício 4")
plt.show()

#Exercicio 5
x = np.linspace(0,50)
y1 = 15000-500*x
y2 = -4*x**2 +250*x +5000
y3 = x**3 -6*x**2

plt.plot(x, y1, color="k")
plt.plot(x, y2, color="y")
plt.plot(x, y3, color="b")

plt.show()