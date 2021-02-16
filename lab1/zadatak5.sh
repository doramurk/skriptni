#!/bin/bash

#imeKazala=$1
#uzorakImenaDatoteka=$2
#echo "Kazalo po kojemu se prebrojava: $imeKazala"
#echo "Argument uzorka imena: $uzorakImenaDatoteka"
#ukupno=0
#for dir in $(find $imeKazala -type d)
#        do
#        	echo "Trenutni direktorij: $dir"
#        for datoteka in $(find "$dir" -maxdepth 1 -name "$uzorakImenaDatoteka")
#                do
#                        broj=$(wc -l $datoteka | cut -d " " -f 1)
#                        ukupno=$(($ukupno + $broj))
#                        echo "Trenutna datoteka: $datoteka"
#                        echo "Broj redaka: $broj"
#                done
#        done 
#echo $ukupno

imeKazala=$1
uzorakImenaDatoteka=$2

echo "Kazalo po kojemu se prebrojava: $imeKazala"
echo "Argument uzorka imena: $uzorakImenaDatoteka"

brojRedaka=0
for file in $(find "$imeKazala/" -name "$uzorakImenaDatoteka")
do
	redak=$(wc -l $file | cut -d ' ' -f 1)
	echo "Trenutna datoteka: $file"
        echo "Broj redaka: $redak"
	brojRedaka=$(($brojRedaka + $redak))
done
echo $brojRedaka
