#!/bin/bash

# Installer John the Ripper
sudo apt update
sudo apt install john -y

# Demander le fichier de hachage à casser
echo "Entrez le chemin du fichier de hachage :"
read hash_file

# Dossier pour enregistrer les résultats
output_dir="/home/potate/scripts/results/hashes" # CHANGE THIS

# Vérifier si le dossier de sortie existe, sinon le créer
if [ ! -d "$output_dir" ]; then
    mkdir -p "$output_dir"
    echo "Le dossier de résultats a été créé à l'emplacement $output_dir."
else
    echo "Le dossier de résultats existe déjà."
fi

# Exécuter John the Ripper pour casser les hachages
john "$hash_file" --wordlist=/usr/share/wordlists/rockyou.txt # CHANGE THIS

# Enregistrer les résultats dans le dossier de sortie
output_file="$output_dir/hash_cracked.txt"
john --show "$hash_file" > "$output_file"

echo "Attaque par dictionnaire terminée."
echo "Les résultats sont enregistrés dans $output_file."