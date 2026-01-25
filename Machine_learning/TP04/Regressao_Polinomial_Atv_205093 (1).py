from statistics import linear_regression
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error, mean_absolute_error
from sklearn.preprocessing import PolynomialFeatures

rep = pd.read_csv("partidaMotor.csv")

print(rep)

x = rep['Tempo']
y = rep['Corrente']
x = x.to_numpy().reshape(-1,1)
y = np.array(y).reshape(-1,1)

print(x)
print(y)

poly = PolynomialFeatures(degree = 10)
X = poly.fit_transform(x)

print(X)

x_train, x_test, y_train, y_test = train_test_split(X, y, test_size = 0.25, random_state = 1)

regressao = LinearRegression()
regressao.fit(x_train, y_train)
resp = regressao.predict(x_test)
mae = mean_absolute_error(y_test, resp)
mse = mean_squared_error(y_test, resp)
valx = np.linspace(x.min(), x.max(), 30)
valx = np.array(valx).reshape(-1,1)
vx = poly.fit_transform(valx)
vy = regressao.predict(vx)
acuracia = regressao.score(x_test, y_test)

print(X)
print(y)
print(resp)
print("MAE = ", round(mae, 3))
print("MSE = ", round(mse, 3))
print("Acuracia: ", round(acuracia, 3))

plt.plot(valx, vy, 'k')
plt.scatter(x,y)
plt.show()
