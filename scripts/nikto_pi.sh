#!/bin/bash

# Installer Nikto
sudo apt update
sudo apt install nikto -y

# Spécifier le dossier pour enregistrer les résultats
output_dir="/home/potate/scripts/results" # CHANGE THIS
mkdir -p "$output_dir"  # Créer le dossier s'il n'existe pas

# Scanner un site web
echo "Entrez l'URL à scanner :"
read website
nikto -h "$website" -output "$output_dir/nikto_scan_results.txt"

echo "Scan de vulnérabilités web terminé. Les résultats sont dans $output_dir/nikto_scan_results.txt."