#!/bin/bash

# Met à jour la liste des paquets
echo "Mise à jour de la liste des paquets..."
sudo apt update

# Met à jour les paquets installés
echo "Mise à jour des paquets installés..."
sudo apt upgrade -y

# Supprime les paquets inutilisés
echo "Suppression des paquets inutilisés..."
sudo apt autoremove -y

# Nettoyage des fichiers inutiles
echo "Nettoyage des fichiers inutiles..."
sudo apt autoclean

# Vérifie s'il faut redémarrer
if [ -f /var/run/reboot-required ]; then
    echo "Un redémarrage est nécessaire. Redémarrage en cours..."
    sudo reboot
else
    echo "Mise à jour terminée. Aucun redémarrage nécessaire."
fi