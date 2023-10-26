#!/bin/bash

TARGET=/home/rach/shell-exe/Job09
csv_file=/home/rach/shell-exe/Job09/Shell_Userlist.csv
delimiter=","

#awk -F',' '{print $1 "," $2 "," $3 "," $4 "," $5}' $csv_file

while IFS="$delimiter" read -r id prenom nom password role
do

if [ "$id" == "Id" ];
then continue
fi

if id "$prenon$nom" &>/dev/null;
then
echo "User $prenom$nom already exists. Skiping."
continue
fi

if [ "$role" == "Admin" ];
then sudo useradd -m -G sudo -p "$password" "$prenom$nom"
else sudo useradd -m -p "$password" "$prenom$nom"
fi
echo "User $prenom$nom crreated with ID $id and role $role."

done < "$csv_file"
