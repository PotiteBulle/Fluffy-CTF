#!/bin/bash

# Installer Nmap
sudo apt update
sudo apt install nmap -y

# Scanner une cible
echo "Entrez l'IP ou le domaine de la cible :"
read target_ip

# Exécuter un scan intensif
sudo nmap -A -T4 "$target_ip" -oN /home/potate/scripts/results/nmap_scan_results.txt # CHANGE THIS

echo "Scan intensif terminé. Résultats enregistrés dans results/nmap_scan_results.txt."