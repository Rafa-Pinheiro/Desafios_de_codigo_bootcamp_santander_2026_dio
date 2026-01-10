salario =float(input("Digite seu salário bruto: ")) 
beneficios = float(input("Digite o valor total dos seus benefícios: "))
aliquota = {"primeira_aliquota":{"faixa_salarial": "0 à R$1100,00", "percentual": 0.05},"segunda_aliquota":{"faixa_salarial": "R$1100,01 à R$2500,00", "percentual": 0.10}, "terceira_aliquota":{"faixa_salarial": "acima de R$2500,00", "percentual": 0.15}}

def calcular_salario_liquido(salario, beneficios, aliquota):
    if salario <= 1100:
        desconto = salario * aliquota["primeira_aliquota"]["percentual"]
    elif salario <= 2500:
        desconto = salario * aliquota["segunda_aliquota"]["percentual"]
    else:
        desconto = salario * aliquota["terceira_aliquota"]["percentual"]
    
    salario_liquido = salario - desconto + beneficios
    return salario_liquido, desconto

salario_liquido, desconto = calcular_salario_liquido(salario, beneficios, aliquota)
print(f'''
                ENTRADA                   SAÍDA
            ------------------------------------------------------- 
SALARIO:       {salario:.2f}        DESCONTO:     {desconto:.2f}
BENEFÍCIOS:    {beneficios:.2f}     SALÁRIO LÍQUIDO: {salario_liquido:.2f}''')