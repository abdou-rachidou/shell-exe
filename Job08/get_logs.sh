#!/bin/bash

TARGET=/home/rach/shell-exe/Job08
user=rach
# Extraire les fichiers de l'archive

cd $TARGET
    DATE=$(date "+%d-%m-%Y-%H:%M")
    FILE=number_connection-$DATE

Number=$(cat /var/log/auth.log | grep "rach(uid=1000)" | wc -l)
echo "Nombre de connexion de $Number" > $FILE

if [ !  -d Backup ] ; then
        mkdir Backup
fi

tar -cvf Backup/$FILE.tar $FILE
