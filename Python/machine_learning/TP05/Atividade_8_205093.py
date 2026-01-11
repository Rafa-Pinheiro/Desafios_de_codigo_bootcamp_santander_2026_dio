##Rafaela da Silva Pinheiro
##205093
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.preprocessing import StandardScaler
from sklearn.cluster import KMeans

dataDF = pd.read_csv("atividade.csv")
kmeans = KMeans(n_clusters = 7, n_init = 'auto', random_state = 3)
scaler = StandardScaler()
dataScala = scaler.fit_transform(dataDF)
kmeans.fit(dataScala)
classes = kmeans.labels_
plt.scatter(dataDF['A'], dataDF['B'], c = classes)
plt.show()
