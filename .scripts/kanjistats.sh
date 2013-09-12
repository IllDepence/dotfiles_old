#!/bin/sh

x=`ls | grep .tar.gz | wc -l`
i=1
echo -n "" > kanji.dat

while [ "$i" -le "$x" ]
do
f=`ls | grep .tar.gz | head -n $i | tail -n 1`
date=${f:6:(-7)}
tar -xzf $f
rm *.png *.php *.xcf > /dev/null 2>&1
count=`echo -en "import json\\njs=open('kanji.json')\\njd=json.load(js)\\ni=0\\nfor e in jd:\\n\\tif(e['used'] == True):\\n\\t\\ti=i+1\\nprint(i);" | python`
echo "$date $count" >> kanji.dat
((i++))
done

rm kanji.json
gnuplot kanjistats.p
rm kanji.dat
