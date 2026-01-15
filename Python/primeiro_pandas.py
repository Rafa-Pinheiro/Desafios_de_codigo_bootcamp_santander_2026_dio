import pandas as pd

# Primeiro dataset
url1 = "https://raw.githubusercontent.com/datasets/covid-19/master/data/countries-aggregated.csv"
df1 = pd.read_csv(url1)

print(df1.head())       # Primeiras linhas
print(df1.info())       # Info de colunas e tipos
print(df1.describe())   # Estatísticas descritivas
print(df1.columns)      # Nomes das colunas
print(df1.shape)        # (n_linhas, n_colunas)
print(df1.dtypes)       # Tipos de dados
print(df1.tail())       # Últimas linhas

# Segundo dataset
url2 = "https://raw.githubusercontent.com/softhints/Pandas-Exercises-Projects/refs/heads/main/data/europe_pop.csv"
sf = pd.read_csv(url2)

print(sf.head())
print(sf.info())
print(sf.describe())
print(sf.columns)
print(sf.shape)
print(sf.dtypes)
print(sf.tail())
