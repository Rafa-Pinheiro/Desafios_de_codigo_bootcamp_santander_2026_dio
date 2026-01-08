peso = float(input("Digite seu peso em toneladas: "))
preco_por_tonelada = float(input("Digite o preço por tonelada do produto: "))
tipo_de_cliente = int(input('''
                        Digite o tipo de cliente: 
                        1 - Novo Cliente
                        2 - Cliente fidelizado
                        3 - Cliente Premium
                        '''))
aliquota_desconto = {
    "novo_cliente": {"descricao": "Novo Cliente", "percentual": 0.0},
    "cliente_fidelizado": {"descricao": "Cliente fidelizado", "percentual": 0.05},
    "cliente_premium": {"descricao": "Cliente Premium", "percentual": 0.10}
}   
def calcular_valor_final(peso, preco_por_tonelada, tipo_de_cliente, aliquota_desconto):
    valor_bruto = peso * preco_por_tonelada
    
    if tipo_de_cliente == 1:
        desconto = valor_bruto * aliquota_desconto["novo_cliente"]["percentual"]
    elif tipo_de_cliente == 2:
        desconto = valor_bruto * aliquota_desconto["cliente_fidelizado"]["percentual"]
    elif tipo_de_cliente == 3:
        desconto = valor_bruto * aliquota_desconto["cliente_premium"]["percentual"]
    else:
        desconto = 0
        print("Tipo de cliente inválido. Sem desconto aplicado.")
    
    valor_final = valor_bruto - desconto
    return valor_final, desconto
valor_final, desconto = calcular_valor_final(peso, preco_por_tonelada, tipo_de_cliente, aliquota_desconto)

print(f'''
                ENTRADA                   SAÍDA     
            -------------------------------------------------------
PESO (toneladas):   {peso:.2f}            DESCONTO:     {desconto:.2f}
PREÇO POR TONELADA: {preco_por_tonelada:.2f}          VALOR FINAL:    {valor_final:.2f}''')    