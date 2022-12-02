#!/bin/bash

FirstCase (){
rm -vrf $1
mkdir -p $1
cd $1
echo "On cree un fichier de 1G compose de blocs de 512 octets."
echo "Le nombre theorique de blocs est donc de 1953125 blocs"
dd if=/dev/urandom of=BigFile.txt count=1024 bs=1M
clear
echo "La taille theorique du fichier est de 1 giga octet."
echo "Voici la taille reelle occupee par le fichier :"
Size=$(stat -c %s BigFile.txt)
Blocs=$(stat -c %b BigFile.txt)
SizeBloc=$(stat -c %B BigFile.txt)
echo "Le fichier à une taille de $Size octets."
echo "Le fichier est compose de $Blocs blocs de $SizeBloc octets."
}

FirstCase LargeFile

