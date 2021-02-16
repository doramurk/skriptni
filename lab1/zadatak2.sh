#grep -i 'banana\|jabuka\|jagoda\|dinja\|lubenica' ~Faks/6sem/skriptni/namirnice.txt
grep -i 'banana\|jabuka\|jagoda\|dinja\|lubenica' namirnice.txt

#grep -i -v 'banana\|jabuka\|jagoda\|dinja\|lubenica' ~Faks/6sem/skriptni/namirnice.txt > ne-voce.txt
grep -i -v 'banana\|jabuka\|jagoda\|dinja\|lubenica' namirnice.txt > ne-voce.txt

#grep -rE [A-Z]{3}[0123456789]{6} *
grep -rE [A-Z]{3}[0123456789]{6} ~/projekti/

find -mtime +7 -mtime -14 -ls

for i in {1..15};do echo $i;done
