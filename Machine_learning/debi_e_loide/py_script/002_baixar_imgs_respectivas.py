import os
import requests
from urllib.parse import urlparse

# Caminho base do projeto
BASE_DIR = r"C:\Users\rafae\Documents\Projetos\Santander Ciência de Dados\desafios_de_codigo\Machine_learning\debi_e_loide"

# Pastas _raw_
BASE_DEB_RAW = os.path.join(BASE_DIR, "pasta_debi_raw")
BASE_LOIDE_RAW = os.path.join(BASE_DIR, "pasta_loide_raw")

# Arquivos de URLs
URLS_DEB_TXT = os.path.join(BASE_DEB_RAW, "urls_debi.txt")
URLS_LOIDE_TXT = os.path.join(BASE_LOIDE_RAW, "urls_loide.txt")

HEADERS = {
    "User-Agent": (
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
        "AppleWebKit/537.36 (KHTML, like Gecko) "
        "Chrome/120.0.0.0 Safari/537.36"
    )
}


def ensure_dir(path: str):
    os.makedirs(path, exist_ok=True)


def read_urls(txt_path: str):
    if not os.path.exists(txt_path):
        print(f"[AVISO] Arquivo não encontrado: {txt_path}")
        return []
    with open(txt_path, "r", encoding="utf-8") as f:
        return [line.strip() for line in f if line.strip()]


def guess_extension_from_url(url: str, default=".jpg"):
    parsed = urlparse(url)
    name = os.path.basename(parsed.path)
    ext = os.path.splitext(name)[1].lower()
    if ext in [".jpg", ".jpeg", ".png", ".gif", ".webp"]:
        return ext
    return default


def download_image(url: str, dest_dir: str, prefix: str, index: int):
    ensure_dir(dest_dir)
    ext = guess_extension_from_url(url)
    filename = f"{prefix}_{index:04d}{ext}"
    dest_path = os.path.join(dest_dir, filename)

    try:
        resp = requests.get(url, headers=HEADERS, timeout=15, stream=True)
        resp.raise_for_status()
    except Exception as e:
        print(f"[ERRO] Falha ao baixar {url}: {e}")
        return None

    try:
        with open(dest_path, "wb") as f:
            for chunk in resp.iter_content(chunk_size=8192):
                if chunk:
                    f.write(chunk)
        print(f"[OK] {filename} <- {url}")
        return dest_path
    except Exception as e:
        print(f"[ERRO] Ao salvar {dest_path}: {e}")
        return None


def download_from_txt(txt_path: str, dest_dir: str, prefix: str):
    urls = read_urls(txt_path)
    print(f"[INFO] Encontradas {len(urls)} URLs em {txt_path}")

    saved = 0
    for idx, url in enumerate(urls):
        path = download_image(url, dest_dir, prefix, idx)
        if path is not None:
            saved += 1
    print(f"[RESUMO] {saved} imagens salvas em {dest_dir}")


def main():
    # Deb -> baixa para pasta_deb_raw
    download_from_txt(URLS_DEB_TXT, BASE_DEB_RAW, "debi")

    # Loide -> baixa para pasta_loide_raw
    download_from_txt(URLS_LOIDE_TXT, BASE_LOIDE_RAW, "loide")


if __name__ == "__main__":
    main()
