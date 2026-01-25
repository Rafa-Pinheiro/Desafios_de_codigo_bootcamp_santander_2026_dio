# Classificador de Imagens: Deb vs Loyd

Projeto de Machine Learning em Python para classificar automaticamente fotos do **Deb** e do **Loyd**, com criação de dataset via web scraping e treinamento de um modelo de visão computacional.[web:112][web:120]

---

## Objetivo

- Coletar imagens do Deb e do Loyd na web via **web scraping**.
- Construir automaticamente um **dataset rotulado** em pastas separadas para cada classe.
- Treinar um modelo de classificação binária capaz de identificar se uma foto é do Deb ou do Loyd.
- Disponibilizar scripts em Python para:
  - Scraping de imagens.
  - Criação e organização do dataset.
  - Treinamento, avaliação e inferência do modelo.

---

## Estrutura do Projeto

Estrutura atual do repositório:

```bash
Machine_learning/
└── debby_e_loyd/
    ├── pasta_deb_dataset/
    │   └── metadata.csv
    ├── pasta_deb_raw/
    │   └── urls_deb.txt
    ├── pasta_loyd_dataset/
    │   └── metadata.csv
    ├── pasta_loyd_raw/
    │   └── urls_loyd.txt
    ├── py_script/
    │   ├── 001_baixar_links_imagens.py
    │   └── 002_criar_datasets.py
    └── README.md
