#!/bin/bash

#4. zadatak

izvorno=$1
odredisno=$2
echo "izvorno kazalo: $izvorno"
echo "odredisno kazalo: $odredisno"

if test ! -d $odredisno 
then
        mkdir $odredisno
	echo "Napravljeno novo odredisno kazalo: $odredisno"
fi
i=0
for slika in $(ls $izvorno)
do
	godina_mjesec=$(stat "$izvorno/$slika" | grep -i 'Modify' | cut -d ':' -f 2 | cut -d '-' -f 1,2 | cut -d ' ' -f 2)
        if test ! -d "$odredisno/$godina_mjesec"
        then
                mkdir "$odredisno/$godina_mjesec"
		echo "Napravljeno novo kazalo: $odredisno/$godina_mjesec"
        fi
        mv "$izvorno/$slika" "$odredisno/$godina_mjesec/$slika"
	i=$(($i+1))
done
echo "Prebaceno $i slika!"
