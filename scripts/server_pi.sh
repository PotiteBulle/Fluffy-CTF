#!/bin/bash

# Port sur lequel lancer le serveur
port=8000 # CHANGE THIS

echo "Démarrage du serveur web sur le port $port..."
python3 -m http.server $port