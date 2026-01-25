import os
import pandas as pd
from sklearn.model_selection import train_test_split

import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers
from tensorflow.keras.preprocessing.image import ImageDataGenerator

# Caminhos base
BASE_DIR = r"C:\Users\rafae\Documents\Projetos\Santander Ciência de Dados\desafios_de_codigo\Machine_learning\debi_e_loide"
DEBI_DATASET_DIR = os.path.join(BASE_DIR, "pasta_debi_dataset")     # imagens da classe debi
LOIDE_DATASET_DIR = os.path.join(BASE_DIR, "pasta_loide_dataset")  # imagens da classe loide

IMG_HEIGHT = 224
IMG_WIDTH = 224
BATCH_SIZE = 16
EPOCHS = 15


def build_dataframe():
    """Cria um DataFrame com caminho das imagens e rótulo (debi/loide)."""
    debi_files = [
        os.path.join(DEBI_DATASET_DIR, f)
        for f in os.listdir(DEBI_DATASET_DIR)
        if f.lower().endswith((".jpg", ".jpeg", ".png"))
    ]
    loide_files = [
        os.path.join(LOIDE_DATASET_DIR, f)
        for f in os.listdir(LOIDE_DATASET_DIR)
        if f.lower().endswith((".jpg", ".jpeg", ".png"))
    ]

    debi_df = pd.DataFrame({"filepath": debi_files, "label": "debi"})
    loide_df = pd.DataFrame({"filepath": loide_files, "label": "loide"})

    df = pd.concat([debi_df, loide_df], ignore_index=True)
    return df


def make_generators(df):
    """Cria generators de treino e validação com duas classes (debi e loide)."""
    train_df, val_df = train_test_split(
        df, test_size=0.2, stratify=df["label"], random_state=42
    )

    train_datagen = ImageDataGenerator(
        rescale=1.0 / 255,
        rotation_range=15,
        width_shift_range=0.05,
        height_shift_range=0.05,
        zoom_range=0.1,
        horizontal_flip=True,
    )
    val_datagen = ImageDataGenerator(rescale=1.0 / 255)

    train_gen = train_datagen.flow_from_dataframe(
        dataframe=train_df,
        x_col="filepath",
        y_col="label",
        target_size=(IMG_HEIGHT, IMG_WIDTH),
        class_mode="binary",
        batch_size=BATCH_SIZE,
        shuffle=True,
    )

    val_gen = val_datagen.flow_from_dataframe(
        dataframe=val_df,
        x_col="filepath",
        y_col="label",
        target_size=(IMG_HEIGHT, IMG_WIDTH),
        class_mode="binary",
        batch_size=BATCH_SIZE,
        shuffle=False,
    )

    print("[INFO] classes mapeadas:", train_gen.class_indices)
    # esperado: {'debi': 0, 'loide': 1}

    return train_gen, val_gen


def build_model():
    """Modelo CNN simples para classificação binária debi vs loide."""
    inputs = keras.Input(shape=(IMG_HEIGHT, IMG_WIDTH, 3))

    x = layers.Conv2D(32, 3, activation="relu", padding="same")(inputs)
    x = layers.MaxPooling2D(2)(x)

    x = layers.Conv2D(64, 3, activation="relu", padding="same")(x)
    x = layers.MaxPooling2D(2)(x)

    x = layers.Conv2D(128, 3, activation="relu", padding="same")(x)
    x = layers.MaxPooling2D(2)(x)

    x = layers.Flatten()(x)
    x = layers.Dense(128, activation="relu")(x)
    x = layers.Dropout(0.5)(x)
    outputs = layers.Dense(1, activation="sigmoid")(x)

    model = keras.Model(inputs, outputs, name="debi_loide_classifier")
    model.compile(
        optimizer="adam",
        loss="binary_crossentropy",
        metrics=["accuracy"],
    )
    return model


def main():
    print("[INFO] Construindo DataFrame de imagens...")
    df = build_dataframe()
    print(df.head())
    print(f"[INFO] Total de imagens: {len(df)}")

    print("[INFO] Criando generators de treino/validação...")
    train_gen, val_gen = make_generators(df)

    print("[INFO] Construindo o modelo...")
    model = build_model()
    model.summary()

    print("[INFO] Iniciando treinamento...")
    history = model.fit(
        train_gen,
        validation_data=val_gen,
        epochs=EPOCHS,
    )

    models_dir = os.path.join(BASE_DIR, "models")
    os.makedirs(models_dir, exist_ok=True)
    model_path = os.path.join(models_dir, "modelo_debi_loide.h5")
    model.save(model_path)
    print(f"[OK] Modelo salvo em {model_path}")


if __name__ == "__main__":
    main()
