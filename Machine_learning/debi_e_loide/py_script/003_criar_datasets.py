import os
import shutil
import pandas as pd

# raiz do projeto
BASE_DIR = r"C:\Users\rafae\Documents\Projetos\Santander Ciência de Dados\desafios_de_codigo\Machine_learning\debi_e_loide"

DEB_RAW = os.path.join(BASE_DIR, "pasta_debi_raw")
LOIDE_RAW = os.path.join(BASE_DIR, "pasta_loide_raw")

DEB_DATASET = os.path.join(BASE_DIR, "pasta_debi_dataset")
LOIDE_DATASET = os.path.join(BASE_DIR, "pasta_loide_dataset")


def create_dataset(source_folder, output_folder, label, num_images=200):
    images = []
    for root, _, files in os.walk(source_folder):
        for file in files:
            if file.lower().endswith((".png", ".jpg", ".jpeg")):
                images.append(os.path.join(root, file))

    if len(images) < num_images:
        print(f"[AVISO] só {len(images)} imagens em {source_folder}")

    sampled = images[:num_images]

    os.makedirs(output_folder, exist_ok=True)

    copied_paths = []
    for img in sampled:
        filename = os.path.basename(img)
        dest_path = os.path.join(output_folder, filename)
        shutil.copy(img, dest_path)
        copied_paths.append(dest_path)

    df = pd.DataFrame(
        {
            "image_path": copied_paths,
            "label": [label] * len(copied_paths),
        }
    )
    metadata_path = os.path.join(output_folder, "metadata.csv")
    df.to_csv(metadata_path, index=False, encoding="utf-8")

    print(f"[OK] Dataset pronto: {len(copied_paths)} imagens em {output_folder}")
    print(f"[OK] metadata.csv salvo em {metadata_path}")


if __name__ == "__main__":
    # Deb -> cria pasta_deb_dataset
    create_dataset(DEB_RAW, DEB_DATASET, label="debi", num_images=200)

    # Loide -> cria pasta_loide_dataset
    create_dataset(LOIDE_RAW, LOIDE_DATASET, label="loide", num_images=200)
