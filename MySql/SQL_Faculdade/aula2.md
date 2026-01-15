#Aula 2 - _Modelagem de dados_

**FORMAS NORMAIS**
 **1ª:** "cada ocorrencia da chave primaria deve corresponder a uma (e apenas uma) informação de cada atributo logo, a entidade não deve conter grupos repetitivos (atributos multivalorados)".

// "@" ao lado do atributo por escrito indica ser a chave
    "+" indica obrigatoriedade em descrições por escrito//

**2ª :** "Estar na 1FN e observar se alguma entidade possui chave primária concatenada. Se sim, observar a existencia de algum atributo (ou conjunto de atributos) com dependência parcial em relação a algum elemento da chave primária concatenada"

[Arquivos oficiais do git sobre .md](https://docs.pipz.com/central-de-ajuda/learning-center/guia-basico-de-markdown#open)

"chave primária concatenada é a chave que sozinha não é o suficiente"

**3ª :** "Estar na 2FN e anaisar se nenhum de seus atributos possui dependência transitivaem relação a outro atributo da entdade que não paritcioe da chave primaria"


#SOBRINO É PERFEITO