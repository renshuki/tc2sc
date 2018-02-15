#!/bin/bash

convert_data="tc2sc.csv"

while IFS=',' read -r tc_char sc_char
do
  echo "Converting $tc_char -> $sc_char"
  sed -i "s/${tc_char}/${sc_char}/g" $1;
done < "$convert_data"
echo "Conversion complete!"
