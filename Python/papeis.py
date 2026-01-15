# Lê o número de pedidos
N = int(input())

# Dicionário para armazenar totais por tipo de embalagem
totais = {"saco": 0, "papelao ondulado": 0, "papel kraft": 0}


# Processa cada pedido
for _ in range(N):
    linha = input()
    cliente, embalagem, quantidade = linha.split(", ")
    quantidade = float(quantidade)
    totais[embalagem] += quantidade

# Imprime os totais por tipo de embalagem
for tipo in ["saco", "papelao ondulado", "papel kraft"]:
    valor = totais.get(tipo, 0)  # se não existir, vem 0
    
    # se quiser garantir inteiro quando for número inteiro:
    if isinstance(valor, float) and valor.is_integer():
        valor = int(valor)
    print(f"{tipo}: {valor}")