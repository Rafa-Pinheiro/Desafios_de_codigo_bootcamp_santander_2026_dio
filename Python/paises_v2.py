# Leitura do numero de exportações
n = int(input())

# Inicializa o dicionario para armazenar toneladas por pais
exportacoes = {
    "Argentina": 0,
    "Bolivia": 0,
    "Brasil": 0,
    "Canada": 0,
    "Chile": 0,
    "China": 0,
    "EUA": 0,
    "Mexico": 0,
    "Peru": 0,
    "Portugal": 0,
    "Reino Unido": 0,
    "Venezuela": 0,
}

# Loop para ler os dados de cada exportacao
for _ in range(n):
    linha = input().strip()
    pais, toneladas = linha.split(",")
    pais = pais.strip()
    toneladas = float(toneladas.strip())
    exportacoes[pais] += toneladas


filtradas = {pais: exportacoes.get(pais, 0)
             for pais in ["Argentina", "Bolivia", "Brasil", "Canada", "Chile", "China",
                          "EUA", "Mexico", "Peru", "Portugal", "Reino Unido", "Venezuela"]
             if exportacoes.get(pais, 0) != 0}

valores_ordenados = sorted(set(filtradas.values()), reverse=True)

for valor in valores_ordenados:
    for pais, v in filtradas.items():
        if v == valor:
            print(f"{pais}: {int(v)} toneladas")
