import os
import sys
import numpy as np
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras.preprocessing import image

# Caminhos base (nova raiz e novo nome de modelo)
BASE_DIR = r"C:\Users\rafae\Documents\Projetos\Santander Ciência de Dados\desafios_de_codigo\Machine_learning\debi_e_loide"
MODEL_PATH = os.path.join(BASE_DIR, "models", "modelo_debi_loide.h5")

IMG_HEIGHT = 224
IMG_WIDTH = 224


def load_trained_model():
    if not os.path.exists(MODEL_PATH):
        raise FileNotFoundError(f"Modelo não encontrado em: {MODEL_PATH}")
    model = keras.models.load_model(MODEL_PATH)
    return model


def preprocess_image(img_path):
    """Carrega e pré-processa uma imagem única para o modelo."""
    if not os.path.exists(img_path):
        raise FileNotFoundError(f"Imagem não encontrada: {img_path}")

    img = image.load_img(img_path, target_size=(IMG_HEIGHT, IMG_WIDTH))
    img_array = image.img_to_array(img)          # (H, W, 3)
    img_array = img_array / 255.0                # mesma normalização do treino
    img_array = np.expand_dims(img_array, axis=0)  # (1, H, W, 3)
    return img_array


def predict_image(model, img_path):
    x = preprocess_image(img_path)
    prob = model.predict(x)[0][0]  # saída sigmoid (0 a 1)

    # mapeamento: 'debi' -> 0, 'loide' -> 1
    l
