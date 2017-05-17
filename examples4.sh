#!/bin/bash

for ((height=1;height<=10;height++));
do
	for ((width=1;width<=9;width++));
	do
		echo -n $width " X " $height " = " $(($width*$height)) "  "
	done
	echo ""
done
