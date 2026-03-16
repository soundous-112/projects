FROM python:3.10-slim

WORKDIR /app

# Copie et installation des dépendances
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copie du reste du projet
COPY . .

# Commande par défaut : exécuter les tests
CMD ["python", "-m", "pytest", "tests/"]