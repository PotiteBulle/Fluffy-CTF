#!/bin/bash

# Fonction pour installer ExifTool
install_exiftool() {
    echo "Installation d'ExifTool..."
    if command -v apt-get &> /dev/null; then
        sudo apt-get update
        sudo apt-get install -y exiftool
    elif command -v brew &> /dev/null; then
        brew install exiftool
    else
        echo "Gestionnaire de paquets non supporté. Veuillez installer ExifTool manuellement."
        exit 1
    fi
}

# Vérifier si ExifTool est installé
if ! command -v exiftool &> /dev/null; then
    install_exiftool
else
    echo "ExifTool est déjà installé."
fi

# Définir le dossier de résultats
result_dir="/home/potate/scripts/results/images" # CHANGE THIS

# Créer le dossier s'il n'existe pas
mkdir -p "$result_dir"

echo "Entrez le chemin de l'image :"
read image_file

# Extraire les métadonnées et les enregistrer dans le dossier spécifié
exiftool "$image_file" > "$result_dir/$(basename "$image_file").txt"

echo "Les métadonnées ont été enregistrées dans $result_dir/$(basename "$image_file").txt"