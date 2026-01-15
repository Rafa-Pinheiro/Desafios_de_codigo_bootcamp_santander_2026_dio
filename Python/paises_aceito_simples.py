n = int(input())

exportacoes = {}
ordem = []

for _ in range(n):
    linha = input().strip() 
    pais, toneladas = linha.split(",") #Divide a linha em país e toneladas
    pais = pais.strip()
    toneladas = float(toneladas.strip())

    if pais not in exportacoes: #Se não apareceu na lista ainda
        exportacoes[pais] = 0 #Inicializa o país
        ordem.append(pais) #Mantém a ordem de aparição

    exportacoes[pais] += toneladas #Acumula as toneladas

for pais in ordem:
    print(f"{pais}: {int(exportacoes[pais])} toneladas") #Imprime sempre como inteiro
