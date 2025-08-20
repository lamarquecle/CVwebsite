# Utiliser une image de base Python
FROM python:3.11-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers nécessaires dans le répertoire de travail
COPY requirements.txt .
COPY ./app ./app

# Installer les dépendances
RUN pip install --upgrade pip && pip install -r requirements.txt

# Créer et activer l'environnement virtuel
RUN python -m venv venv
ENV PATH="/app/venv/bin:8080"

# Exécuter le script main.py
CMD ["python", "app/main.py"]
