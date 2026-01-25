import os
import time
import requests
from bs4 import BeautifulSoup

# Base do projeto
BASE_DIR = r"C:\Users\rafae\Documents\Projetos\Santander Ciência de Dados\desafios_de_codigo\Machine_learning\debi_e_loide"

# Caminhos de saída (arquivos de URLs dentro das pastas _raw)
PATH_DEB_TXT = os.path.join(BASE_DIR, "pasta_debi_raw", "urls_debi.txt")
PATH_LLOYD_TXT = os.path.join(BASE_DIR, "pasta_loide_raw", "urls_loide.txt")

HEADERS = {
    "User-Agent": (
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
        "AppleWebKit/537.36 (KHTML, like Gecko) "
        "Chrome/120.0.0.0 Safari/537.36"
    )
}


def ensure_dir_from_file(path: str):
    """Garante que o diretório do arquivo exista."""
    directory = os.path.dirname(path)
    os.makedirs(directory, exist_ok=True)


def scrape_bing_image_links(query: str, num_images: int = 200):
    """
    Scrapea até num_images URLs de imagens do Bing Images.
    Usa tags <img> com classe 'mimg' (thumbnails).
    """
    links = []
    first = 0          # offset/paginação
    page_size = 35     # Bing geralmente traz ~35 imagens por página

    while len(links) < num_images:
        params = {
            "q": query,
            "form": "HDRSC2",
            "first": first,
        }
        url = "https://www.bing.com/images/search"
        print(f"[INFO] Bing '{query}' - first={first}")

        try:
            resp = requests.get(url, headers=HEADERS, params=params, timeout=10)
            resp.raise_for_status()
        except Exception as e:
            print(f"[ERRO] requisicao Bing ({query}, first={first}): {e}")
            break

        soup = BeautifulSoup(resp.text, "html.parser")

        # Seleciona imagens principais (classe mimg)
        imgs = soup.select("img.mimg")
        if not imgs:
            print("[INFO] Nenhuma <img.mimg> encontrada, encerrando.")
            break

        added_this_page = 0
        for img in imgs:
            src = img.get("src") or img.get("data-src")
            if not src:
                continue
            # ignora data: e duplicadas
            if src.startswith("data:"):
                continue
            if src in links:
                continue

            links.append(src)
            added_this_page += 1

            if len(links) >= num_images:
                break

        print(f"[INFO] Página adicionou {added_this_page} links, total={len(links)}")

        # se não adicionou nada novo, provavelmente acabou
        if added_this_page == 0:
            break

        first += page_size
        time.sleep(1.5)  # pausa para não bater tão forte

    return links[:num_images]


def write_urls_to_txt(urls, path_txt: str):
    """Salva a lista de URLs em um arquivo de texto, um link por linha."""
    ensure_dir_from_file(path_txt)
    with open(path_txt, "w", encoding="utf-8") as f:
        for u in urls:
            f.write(u + "\n")
    print(f"[OK] Salvo {len(urls)} URLs em {path_txt}")


def main():
    # Deb -> salva em pasta_deb_raw/urls_deb.txt
    deb_links = scrape_bing_image_links("debi", 200)
    write_urls_to_txt(deb_links, PATH_DEB_TXT)

    # Loyd -> salva em pasta_loide_raw/urls_loyd.txt
    loyd_links = scrape_bing_image_links("loide", 200)
    write_urls_to_txt(loyd_links, PATH_LLOYD_TXT)


if __name__ == "__main__":
    main()
