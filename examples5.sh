#!/bin/bash

echo -n "Nhap n: "
read num

for ((i=1;i<=num;i++));
do
	mkdir -p test/samples_$i
done
