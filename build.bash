#!/bin/bash
mkdir -p creatures
touch creatures/__init__.py
while IFS=, read name sci_name; do
  lower_name=$(echo "$name" | tr '[:upper:]' '[:lower:]')
  echo "
def $name():
    return '$sci_name'
" >  "./creatures/${lower_name}.py"
done < creatures.csv
