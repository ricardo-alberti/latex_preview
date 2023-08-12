#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

filename="$1"

latexmk -pdf -pvc "$filename.tex" &

zathura "$filename.pdf"

wait
