#!/bin/bash

# Chemin du dossier contenant le fichier .ovpn
OVPN_DIR="/chemin/vers/votre/dossier" # CHANGE THIS
OVPN_FILE="votre_fichier.ovpn" # CHANGE THIS

# Vérification de l'installation d'OpenSSH
if ! dpkg -l | grep -q openssh-server; then
    echo "Installation d'OpenSSH..."
    sudo apt update
    sudo apt install -y openssh-server
    echo "OpenSSH installé avec succès."
else
    echo "OpenSSH est déjà installé."
fi

# Vérification de l'installation de OpenVPN
if ! dpkg -l | grep -q openvpn; then
    echo "Installation d'OpenVPN..."
    sudo apt update
    sudo apt install -y openvpn
    echo "OpenVPN installé avec succès."
else
    echo "OpenVPN est déjà installé."
fi

# Connexion au VPN
if [ -f "$OVPN_DIR/$OVPN_FILE" ]; then
    echo "Connexion au VPN en utilisant $OVPN_FILE..."
    sudo openvpn --config "$OVPN_DIR/$OVPN_FILE"
else
    echo "Erreur : Le fichier $OVPN_FILE n'existe pas dans $OVPN_DIR."
    exit 1
fi