# !bin/bash


while read -r line;
do
	echo "$line" | rev;
done < "$1"

