#!/bin/bash

if [ $# -eq 0 ]; then
	exit 1
else
	dir=$1;
	if [ ! -d "$dir" ]; then
		exit 1
	elif [ ! -r "$dir" ]; then
		exit 1
	fi

	if [ $# -gt 1 ]; then
		ext=*$2
	else 
	    exit 1
	fi
fi

count=0

for data in ${dir}/$ext; do
	if [ "$data" != "${dir}/$ext" ]; then
		if [ ! -d "$data" ]; then
			(( count+=1 ))
		fi
	fi
done

echo $count