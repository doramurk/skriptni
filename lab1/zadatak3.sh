for ime in $(ls | grep -E '*[0-9]{4}-02-[0-9]{2}')
do
	datum=$(echo $ime | cut -d '.' -f 2)
	dan=$(echo $datum | cut -d '-' -f 3)
	mjesec=$(echo $datum | cut -d '-' -f 2)
	godina=$(echo $datum | cut -d '-' -f 1)
	echo "datum: $dan-$mjesec-$godina"
	echo "------------------------------------------------------"
	cut $ime -f 2 -d '"' | sort | uniq -c | sort -rn
done


