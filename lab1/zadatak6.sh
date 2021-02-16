#!/bin/bash

cilj=${!#}

if [ ! -e $cilj ]
then
	echo "Stvaram kazalo: $cilj"
	mkdir $cilj
fi

i=0
for file in $@
do
	file="6zad/$file"
	    
	if [ -f $file ]
	then
		if [ -r $file ]
		then
        		cp $file $cilj
        		i=$((i+1))
		else
			echo "Datoteka $file nije citljiva."
		fi
	fi
done
echo "Uspjesno je kopirano $i datoteka."
