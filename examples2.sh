#!/bin/bash

echo -n "Nhap n: "
read num

for ((height=1;height<=num;height++));
do
	for ((width=1;width<=num;width++));
	do
		echo -n $width "  "
	done
	echo ""
done
