#!/bin/bash
#!/bin/sh

function bac1 () {
	if [ $1 -eq 0 ] 
		then echo "Equation has no experimental"
	elif [ $2 -eq 0 ]
		then echo "Countless solutions"
	else
		echo "Equation has 1 experimental x = " $(echo "scale=2; -$2 / $1" | bc )
	fi
}

function bac2 () {
	if [ $1 -eq 0 ];
	then
		bac1 $2 $3
	else
		delta=`expr $2 \* $2 - 4 \* $1 \* $3 `
		if [ $delta -eq 0 ];
			then 
				echo " Equation has 1 experimental x = " $(echo "scale=2; -$b / (2 * $a)" | bc )
		elif [ $delta -gt 0 ];
			then 
				echo " Equation has 2 experimental x1 = " $(echo "scale=2; -($b + sqrt($delta))/(2*$a)" | bc)
				echo " Equation has 2 experimental x2 = " $(echo "scale=2; -($b - sqrt($delta))/(2*$a)" | bc)
		else 
			echo "Equation invalid"
		fi
	fi
}

while echo $a $b $c | egrep -v "^[0-9]" > /dev/null 2>&1
do
    echo "status: -1"
    echo "-------------Input---------------"
    echo -n "a: "
    read a
    echo -n "b: "
    read b
    echo -n "c: "
    read c
done
bac2 $a $b $c

