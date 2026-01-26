# 🚀 Desafios de Código – Santander Bootcamp 2026 (DIO)

Repositório dedicado às soluções dos desafios de código do **Santander Bootcamp 2026 – Ciência de Dados com Python (DIO)**, organizados por trilha e tecnologia. Aqui você encontra desde exercícios iniciais de Python e Excel até projetos de **Machine Learning aplicado**, incluindo web scraping e classificação de imagens.

---

## 🧭 Organização do Repositório

```bash
Desafios_de_codigo_bootcamp_santander_2026_dio/
├── Excel/
├── Machine_learning/
├── MySql/
├── NoSql/
├── Python/
└── README.md
```

Cada pasta representa um conjunto de desafios/projetos em uma tecnologia específica:

- 📊 [**Excel**](https://github.com/Rafa-Pinheiro/Desafios_de_codigo_bootcamp_santander_2026_dio/tree/main/Excel)
- 🤖 [**Machine Learning**](https://github.com/Rafa-Pinheiro/Desafios_de_codigo_bootcamp_santander_2026_dio/tree/main/Machine_learning)
- 🐍 [**Python**](https://github.com/Rafa-Pinheiro/Desafios_de_codigo_bootcamp_santander_2026_dio/tree/main/Python)
- 🗄️ [**MySQL**](https://github.com/Rafa-Pinheiro/Desafios_de_codigo_bootcamp_santander_2026_dio/tree/main/MySql)
- 🍃 [**NoSQL**](https://github.com/Rafa-Pinheiro/Desafios_de_codigo_bootcamp_santander_2026_dio/tree/main/NoSql)

---

## 🐍 Python – Desafios de Lógica, ETL e Análise de Dados

**Pasta:** [`Python/`](https://github.com/Rafa-Pinheiro/Desafios_de_codigo_bootcamp_santander_2026_dio/tree/main/Python)

Scripts principais (nomes podem variar conforme você evoluir, mas a ideia geral é esta):

- `calculando_paletes.py`
    - Cálculo de quantidade de paletes/embalagens com base em capacidade e demanda.
    - Conceitos: lógica condicional, operações matemáticas, entrada/saída simples.
- `salario_liquido.py`
    - Cálculo de salário líquido a partir de salário bruto e descontos.
    - Conceitos: aritmética, regras de negócio, formatação de saída.
- `papeis.py`
    - Organização e apresentação de dados financeiros (papéis) em Python.
    - Uso de estruturas de dados (listas/dicionários) e iteração.
- `primeiro_pandas.py`
    - Primeiros passos com **pandas** para leitura e exploração de dados tabulares.
    - Conceitos: DataFrame, seleção de colunas, filtros, estatísticas descritivas.
- 🔁 **Desafio ETL com IA Generativa**
    - Arquivos: `desafio_etl.py`, `customers-100.csv`, `customers-1000.csv`, `primeiro_pandas.py`.
    - Pipeline de **ETL (Extract, Transform, Load)** usando Python e pandas, com foco em:
        - leitura de múltiplos arquivos CSV,
        - limpeza e transformação de dados,
        - junção/concatenação de datasets,
        - preparação de dados para análises posteriores.
- 🌍 **Exportadora para Países**
    - Arquivos como `exportadora.py`, `exportadora_simples.py`, `paises.py`, `paises_aceito_simples.py`, `paises_v2.py`.
    - Simulação de uma empresa exportadora, com:
        - regras de envio por país,
        - listas de países aceitos,
        - evolução incremental até a versão final aceita na plataforma DIO.


### Tecnologias e recursos usados (Python)

- **Python 3**
- **pandas** – leitura de CSV, ETL, manipulação de DataFrames.
- I/O de arquivos (`open`, leitura/escrita de `.csv` e `.txt`).
- Estruturas de controle: condicionais, laços, funções, modularização de scripts.

---

## 📊 Excel – Dashboards, Power Query e KPIs

**Pasta:** [`Excel/`](https://github.com/Rafa-Pinheiro/Desafios_de_codigo_bootcamp_santander_2026_dio/tree/main/Excel)

Conteúdos principais:

- `dashboard_excel_vendas_xbox/`
    - Dashboard de vendas de Xbox em Excel.
    - Conceitos:
        - tabelas dinâmicas,
        - gráficos,
        - segmentações de dados,
        - indicadores e métricas de vendas.
- `my_first_workbook.xlsx`
    - Primeira pasta de trabalho com fórmulas básicas, organização de planilhas e formatações.
- `nintendo-sending-packages.xlsx`
    - Planilha de controle/logística de envio de pacotes da Nintendo.
    - Conceitos:
        - controle de pedidos,
        - cálculo de frete/volume,
        - organização de dados logísticos.
- `power_query_ETL_excel_nintendo.xlsx`
    - Uso de **Power Query** para ETL dentro do Excel:
        - importação de dados de fontes externas,
        - limpeza (remoção de nulos, filtros),
        - transformação (mesclagem de tabelas, colunas calculadas),
        - carregamento em tabelas/dashboards.
- `Mapa Mental OKS e KPIS.png`
    - Mapa mental sobre **OKRs e KPIs**, conectando conceitos de métricas de desempenho com os dashboards e análises construídos em Excel.


### Tecnologias e recursos usados (Excel)

- Fórmulas básicas e intermediárias (SOMA, MÉDIA, SE, PROCV/XLOOKUP etc.).
- Tabelas e Tabelas Dinâmicas.
- Gráficos, segmentações de dados e painéis (dashboards).
- Power Query para ETL visual (importar, transformar e carregar dados).

---

## 🤖 Machine Learning – Projetos Práticos

**Pasta:** [`Machine_learning/`](https://github.com/Rafa-Pinheiro/Desafios_de_codigo_bootcamp_santander_2026_dio/tree/main/Machine_learning)

Estrutura geral:

```bash
Machine_learning/
├── TP01/
├── TP02/
├── TP03/
├── TP04/
├── TP05/
├── TP06/
└── debi_e_loide/
```

- As pastas `TP01` a `TP06` representam trilhas/projetos progressivos de Machine Learning conforme a trilha do bootcamp (por exemplo: regressão, classificação, métricas, validação cruzada, etc.).
- A pasta `debi_e_loide/` é um projeto mais completo, focado em **classificação de imagens** usando CNN.


### 🧠 Projeto: Classificador de Imagens – `debi_e_loide`

**Pasta:** [`Machine_learning/debi_e_loide`](https://github.com/Rafa-Pinheiro/Desafios_de_codigo_bootcamp_santander_2026_dio/tree/main/Machine_learning/debi_e_loide)

Estrutura principal:

```bash
debi_e_loide/
├── pasta_deb_dataset/
├── pasta_deb_raw/
├── pasta_loide_dataset/
├── pasta_loide_raw/
├── py_script/
│   ├── 001_baixar_links_imagens.py
│   ├── 002_baixar_imgs_respectivas.py
│   ├── 003_criar_datasets.py
│   ├── 004_treinamento.py
│   └── 005_inferencia.py
└── README.md
```

**Fluxo do projeto:**

1. **Coleta de links de imagens (Web Scraping com Bing)**
    - `py_script/001_baixar_links_imagens.py`
    - Usa `requests` + `BeautifulSoup` para pesquisar imagens no Bing Images, buscando por duas classes (`debi` e `loide`).
    - Extrai as URLs das imagens e salva em:
        - `pasta_deb_raw/urls_deb.txt`
        - `pasta_loide_raw/urls_loyd.txt`
2. **Download das imagens para as pastas raw**
    - `py_script/002_baixar_imgs_respectivas.py`
    - Lê os arquivos `urls_deb.txt` e `urls_loyd.txt`.
    - Usa `requests` para baixar e salvar as imagens como arquivos numerados (`debi_0000.jpg`, `loide_0000.jpg`, etc.) diretamente nas pastas:
        - `pasta_deb_raw/`
        - `pasta_loide_raw/`
3. **Criação dos datasets rotulados**
    - `py_script/003_criar_datasets.py`
    - A partir das imagens em `pasta_deb_raw/` e `pasta_loide_raw/`, seleciona um subconjunto (por exemplo, 200 imagens) e copia para:
        - `pasta_deb_dataset/` (classe **debi**)
        - `pasta_loide_dataset/` (classe **loide**)
    - Gera um `metadata.csv` em cada pasta, com colunas como:
        - `image_path` – caminho completo da imagem no dataset,
        - `label` – rótulo da classe (`debi` ou `loide`).
4. **Treinamento do modelo de classificação**
    - `py_script/004_treinamento.py`
    - Usa **TensorFlow/Keras** para treinar uma **CNN de classificação binária**:
        - Carrega as imagens a partir do DataFrame (`filepath`, `label`) usando `ImageDataGenerator.flow_from_dataframe`.
        - Aplica **data augmentation**: rotação, zoom, deslocamentos e flip horizontal.
        - Normaliza as imagens para `[0, 1]`.
        - Define um modelo CNN simples com camadas `Conv2D`, `MaxPooling2D`, `Dense` e `Dropout`.
        - Usa:
            - otimizador `adam`,
            - função de perda `binary_crossentropy`,
            - métrica `accuracy`.
    - Salva o modelo treinado em:
        - `Machine_learning/debi_e_loide/models/modelo_debi_loide.h5`
5. **Inferência em novas imagens**
    - `py_script/005_inferencia.py`
    - Carrega o modelo salvo (`modelo_debi_loide.h5`).
    - Recebe o caminho de uma imagem via linha de comando:

```bash
python py_script/005_inferencia.py "caminho/para/imagem.jpg"
```

    - Pré-processa a imagem (resize para 224×224, conversão para array, normalização).
    - Faz a predição com `model.predict` e retorna:
        - probabilidade da classe `loide`,
        - rótulo final (`DEBI` ou `LOIDE`).

### Tecnologias e recursos usados (Machine Learning)

- **Python 3**
- **TensorFlow / Keras**
    - Construção de modelos `Sequential` ou `Model` API.
    - Camadas convolucionais (`Conv2D`, `MaxPooling2D`).
    - Camadas densas, Dropout e ativação `sigmoid` para saída binária.
    - `ImageDataGenerator` para data augmentation e leitura de imagens a partir de DataFrame.
- **scikit-learn**
    - `train_test_split` para divisão treino/validação.
- **pandas**
    - Construção de DataFrame com caminhos de imagens e labels.
- **requests + BeautifulSoup**
    - Web scraping de Bing Images para coleta de URLs de imagens.
- **Pillow / preprocessing de imagens**
    - Carregamento de imagens, resize e conversão para tensores antes da inferência.

---

## 🗄️ MySQL \& 🍃 NoSQL

**Pastas:**

- [`MySql/`](https://github.com/Rafa-Pinheiro/Desafios_de_codigo_bootcamp_santander_2026_dio/tree/main/MySql)
- [`NoSql/`](https://github.com/Rafa-Pinheiro/Desafios_de_codigo_bootcamp_santander_2026_dio/tree/main/NoSql)

Essas pastas concentram scripts e artefatos relacionados a:

- **MySQL**
    - Modelagem de dados relacional.
    - Criação de tabelas, chaves primárias e estrangeiras.
    - Consultas SQL (SELECT, JOIN, agregações, filtros).
- **NoSQL**
    - Exercícios com bancos não-relacionais (coleções, documentos, chaves/valores).
    - Foco em como modelar dados sem esquema fixo para cenários de alta escala ou flexibilidade.

Conforme novos desafios forem adicionados, esta seção pode ser expandida com descrições específicas de cada script/atividade.

---

## 🌐 Tecnologias Principais do Repositório

- **Linguagens**
    - Python
    - SQL (MySQL)
    - Fórmulas e ferramentas de Excel
- **Bibliotecas e ferramentas**
    - `pandas`, `numpy` – ETL e análise de dados.
    - `TensorFlow`, `Keras` – modelos de Machine Learning supervisionado.
    - `scikit-learn` – divisão de dados e métricas auxiliares.
    - `requests`, `beautifulsoup4` – web scraping de imagens.
    - Excel + Power Query – transformação visual de dados e construção de dashboards.

---

## 📌 Como Clonar e Rodar

```bash
git clone https://github.com/Rafa-Pinheiro/Desafios_de_codigo_bootcamp_santander_2026_dio.git
cd Desafios_de_codigo_bootcamp_santander_2026_dio
```

Para projetos Python/ML, recomenda-se criar um ambiente virtual e instalar as dependências (exemplo genérico):

```bash
python -m venv .venv
# Linux/Mac
source .venv/bin/activate
# Windows
.\.venv\Scripts\activate

# instalar dependências conforme seu arquivo requirements.txt (quando existir)
pip install -r requirements.txt
```


---

## 🤝 Contribuições \& Contato

Este repositório acompanha minha jornada no **Santander Bootcamp 2026 – Ciência de Dados com Python (DIO)**. Sugestões de melhorias, issues ou PRs são super bem-vindos para:

- Refatorar soluções de desafios,
- Otimizar performance e legibilidade de código,
- Testar novas abordagens de Machine Learning e Data Science,
- Explorar mais fontes de dados e visualizações.

Sinta-se à vontade para:

- Abrir uma **Issue** com dúvidas, sugestões ou correções.
- Enviar um **Pull Request** com melhorias ou novas soluções.

> “Falar é fácil. Mostre-me o código.” – adaptado de Linus Torvalds.
