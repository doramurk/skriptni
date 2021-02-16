proba="Ovo je proba"
echo $proba

lista_datoteka="ls"
$lista_datoteka

proba3=$(echo {$proba,$proba,$proba}. )
echo $proba3

a=4 b=3 c=7
d=$((($a+4)*$b%$c))

broj_rijeci=$(wc -w *.txt)
echo $broj_rijeci

ls ~/

cut -f 1,6,7 /etc/passwd

ps -o uid,pid,comm -A


