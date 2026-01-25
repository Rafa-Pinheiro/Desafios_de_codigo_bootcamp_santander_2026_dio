from random import random
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.preprocessing import StandardScaler
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score
from sklearn.svm import SVC

dataDF = pd.read_csv("censo.csv")

x = dataDF[['idade','pontuação','anos escolares','ganho de capital', 'perda de capital', 'horas semanais']]
y = dataDF['classe']

scala = StandardScaler()
X = scala.fit_transform(x)
x_train, x_test, y_train, y_test = train_test_split(X, y, test_size = 0.25, 
                                                    random_state=2)

svm = SVC(kernel = 'linear', C = 0.5) #kernel pode ser: rbf, poly, sigmoid, linear
svm.fit(x_train, y_train)
resultado = svm.predict(x_test)
acuracia = accuracy_score(y_test, resultado)

print(resultado)
print("ACURACIA:", acuracia)
