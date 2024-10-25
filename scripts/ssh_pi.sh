#!/bin/bash

# Chemin vers le fichier JSON contenant les IP autorisées
AUTHORIZED_IPS_FILE="/chemin/vers/authorized_ips.json" # CHANGE THIS

# Extraction de la dernière adresse IP ayant initié une connexion SSH
CURRENT_IP=$(last -i | grep "sshd" | awk '{print $3}' | head -n 1)

# Adresse email pour l'envoi des alertes
EMAIL="votre_email@example.com" # CHANGE THIS

# Chargement des IP autorisées depuis le fichier JSON
AUTHORIZED_IPS=($(jq -r '.authorized_ips[]' "$AUTHORIZED_IPS_FILE"))

# Fonction pour vérifier si l'adresse IP est autorisée
is_ip_authorized() {
    local ip="$1"
    for authorized_ip in "${AUTHORIZED_IPS[@]}"; do
        if [[ "$ip" == "$authorized_ip" ]]; then
            return 0 # IP autorisée
        fi
    done
    return 1 # IP non autorisée
}

# Vérification de l'adresse IP et envoi d'une alerte si nécessaire
if ! is_ip_authorized "$CURRENT_IP"; then
    echo "Alerte : Connexion SSH non autorisée depuis IP $CURRENT_IP" | mail -s "Alerte SSH : IP non autorisée" "$EMAIL"
fi