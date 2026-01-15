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

dados = []
# Coleta os dados para impressão, ignorando países com 0 toneladas
for pais in ["Argentina", "Bolivia", "Brasil", "Canada", "Chile", "China", "EUA", "Mexico", "Peru", "Portugal", "Reino Unido", "Venezuela"]:
    valor = exportacoes.get(pais)  # se não existir, vem 0

    # se quiser garantir inteiro quando for número inteiro:
    if isinstance(valor, float) and valor.is_integer():
        valor = int(valor)

    if valor != 0:
        dados.append((pais, valor))

# ordenar do maior valor para o menor
dados_ordenados = sorted(dados, key=lambda x: x[1], reverse=True)

# imprimir ordenado
for pais, valor in dados_ordenados:
    print(f"{pais}: {valor} toneladas")