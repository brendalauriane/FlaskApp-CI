# Contenu du Dockerfile

# 1. Utiliser une image de base officielle Python
FROM python:3.9-slim

# 2. Définir le répertoire de travail dans le conteneur
WORKDIR /app

# 3. Copier le fichier des dépendances et les installer (permet d'utiliser le cache de Docker)
COPY requirements.txt .
RUN pip install -r requirements.txt

# 4. Copier le reste du code de l'application dans le conteneur
COPY . .

# 5. Spécifier le port sur lequel l'application écoute
EXPOSE 5002

# 6. Définir la commande pour lancer l'application au démarrage du conteneur
CMD ["python", "app.py"]
