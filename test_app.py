import pytest
from app import app

def test_index():
    # Crée un client de test pour l'application
    tester = app.test_client()
    # Fait une requête GET sur la racine '/'
    response = tester.get('/')
    
    # Vérifie que la réponse a un statut code 200 (OK)
    assert response.status_code == 200
    # Vérifie que le corps de la réponse contient "Hello, World!"
    assert b"Hello, World!" in response.data
