#!/bin/bash

if [ $# -eq 0 ]; then
	exit 1
fi

input="$1"

if [ ! -r $input ]; then
	exit 1
fi

output=0

while read num sign; do
	case "$sign" in
		"+")
			output=$((output+num))
			;;
		"-")
			output=$((output-num))
			;;
		"/")
			output=$((output/num))
			;;
		"*")
			output=$((output*num))
			;;
		*)
			exit 1
			;;
	esac
done < $input

echo "$output"