import pandas as pd
url = "https://raw.githubusercontent.com/Muralimekala/python/master/resp2.csv"
df1 = pd.read_csv(url)
# O dataset agora está alocado num Pandas DataFrame chamado df1
print(df1.head())  # Exibe as primeiras linhas do DataFrame para verificação
print(df1.info())  # Exibe informações sobre o DataFrame, como colunas e tipos de dados
print(df1.describe())  # Exibe estatísticas descritivas do DataFrame
print(df1.columns)  # Exibe os nomes das colunas do DataFrame
print(df1.shape)  # Exibe a forma do DataFrame (número de linhas e colunas)
print(df1.dtypes)  # Exibe os tipos de dados de cada coluna
print(df1.tail())  # Exibe as últimas linhas do DataFrame para verificação

url2 = "https://raw.githubusercontent.com/Muralimekala/python/master/Salaries.csv"
sf = pd.read_csv(url2)
print(sf.head())  # Exibe as primeiras linhas do segundo DataFrame para verificação
print(sf.info())  # Exibe informações sobre o segundo DataFrame
print(sf.describe())  # Exibe estatísticas descritivas do segundo DataFrame
print(sf.columns)  # Exibe os nomes das colunas do segundo DataFrame
print(sf.shape)  # Exibe a forma do segundo DataFrame (número de linhas e colunas)
print(sf.dtypes)  # Exibe os tipos de dados de cada coluna do segundo DataFrame
print(sf.tail())  # Exibe as últimas linhas do segundo DataFrame para verificação
