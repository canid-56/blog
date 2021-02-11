#!/bin/bash
MSG=(`jupyter nbconvert --to markdown $1`)
mv ${1%.*}_files/ figure/
cat ${1%.*}.md | sed 's/^\(!\[.*\](\)\(.*\))$/\1{{ "figure\/\2" | relative_url }})/' > _posts/$(basename ${1%.*}.md)
rm ${1%.*}.md