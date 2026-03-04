# Image de base Python légère
FROM python:3.11-slim

# Dossier de travail dans le conteneur
WORKDIR /app

# Copier et installer les dépendances
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier le code de l'application
COPY . .

# Exposer le port 5000
EXPOSE 5000

# Lancer l'application
CMD ["python", "app.py"]