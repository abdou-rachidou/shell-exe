# Vérifier si le système utilise APT ou YUM
if command -v apt &> /dev/null
then
    echo "Mise à jour du gestionnaire de paquets avec APT..."
    sudo apt update && sudo apt upgrade -y
    sudo apt autoremove -y
elif command -v yum &> /dev/null
then
    echo "Mise à jour du gestionnaire de paquets avec YUM..."
    sudo yum update -y
else
    echo "Le gestionnaire de paquets n'est pas pris en charge sur ce système."
fi
