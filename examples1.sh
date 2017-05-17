#!/bin/bash

echo "Nhap n: "
read num
for ((line=1;line<=num;line++));
do
	for ((print=1;print<=line;print++));
	do
		echo -n "*"
	done
	echo ""
done
fi
