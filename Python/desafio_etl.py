import pandas as pd
import requests
import json
import openai



openai_api_key = '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'
api_url = "https://sdw-2023-prd.up.railway.app"

openai.api_key = openai_api_key

caminho = r"C:\Users\rafae\Documents\Projetos\Santander Ciência de Dados\desafios_de_codigo\Python\customers-100.csv"
df = pd.read_csv(caminho)
print(df.shape)
print(df.head())
print(df.columns)
user_ids = df["Customer Id"].head(100).tolist()

# --- Extraindo dados da API ---
def get_user(id):
    try:
        print(f"Buscando id={id}...")
        response = requests.get(f"{api_url}/users/{id}", timeout=5)
        print(f"id={id} -> status={response.status_code}")
        if response.status_code == 200:
            return response.json()
        else:
            return None
    except requests.exceptions.RequestException as e:
        print(f"Erro em id={id}: {e}")
        return None

users = [user for id in user_ids if (user := get_user(id)) is not None]

print(f"Total de usuários obtidos: {len(users)}")
print(json.dumps(users, indent=2, ensure_ascii=False))

