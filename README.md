# Fluffy-CTF
CTF Scripts (Raspberry pi)


## Instructions pour Modifier le Chemin de Sauvegarde :

Pour personnaliser l'emplacement où les résultats des scripts 
- `nikto_pi.sh`
- `nmap_pi.sh` 

Sont sauvegardés, veuillez suivre ces étapes :

1. Ouvrez le script : Utilisez votre éditeur de texte préféré pour ouvrir `nikto_pi.sh` et `nmap_pi.sh`

2. Recherchez la ligne de chemin de sauvegarde : Localisez la ligne qui définit le chemin où les résultats sont enregistrés. Elle ressemble généralement à ceci :

```js
"/home/potate/scripts/results"
```

3. Modifiez le chemin : Changez /home/potate/scripts/results par le chemin de votre choix. Assurez-vous que le dossier de destination existe ou créez-le avant d'exécuter le script.

4. Enregistrez vos modifications : Une fois les modifications apportées, enregistrez le fichier et fermez l'éditeur.

**Maintenant, lorsque vous exécuterez les scripts, les résultats seront enregistrés dans le nouvel emplacement que vous avez spécifié.**

# Permissions des fichiers
modifier les permissions d'accès aux fichiers sur un système Unix/Linux, vous pouvez utiliser la commande `chmod`

# Clause de Non-Responsabilité

Les scripts et outils fournis dans ce dépôt sont destinés à des fins éducatives et de recherche uniquement. L'utilisation de ces outils doit être effectuée de manière responsable et éthique. L'auteur·e ne peut être tenu·e responsable des conséquences de l'utilisation de ces scripts, y compris, mais sans s'y limiter, les dommages aux systèmes, les pertes de données ou les violations de la loi. En utilisant ce dépôt, vous acceptez de respecter toutes les lois applicables et de n'utiliser ces outils que dans des environnements autorisés. Toute utilisation inappropriée est à vos propres risques.

## Licence
Ce projet est sous la [licence](https://github.com/PotiteBulle/Fluffy-CTF/blob/main/LICENSE) MIT. Vous êtes libre de l'utiliser, de le modifier et de le distribuer, tant que vous incluez la licence et le copyright d'origine dans toutes les copies ou parties substantielles du logiciel.