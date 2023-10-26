#!/bin/bash

# Vérifier le nombre d'arguments
if [ $# -ne 2 ]; then
    echo "Utilisation : $0 contenu.txt nouveauFichier.txt"
    exit 1
fi

# Vérifier si le fichier source existe
if [ ! -f "$1" ]; then
    echo "Le fichier source '$1' n'existe pas."
    exit 1
fi

# Copier le contenu
cat "$1" > "$2"

# Vérifier si la copie a réussi
if [ $? -eq 0 ]; then
    echo "Le contenu de '$1' a été copié avec succès dans '$2'."
else
    echo "Une erreur s'est produite lors de la copie du fichier."
fi
