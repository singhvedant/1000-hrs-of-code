a1=0
a2=0
a3=0
b1=0
b2=0
b3=0
c1=0
c2=0
c3=0

goal=0
skp1=0

function check_alignment() {
	if [ $1 -eq $3 ] && [ $2 -eq $3 ]; then
		goal=$3
	fi
}

function check_filled() {
	if [ $1 -eq 0 ]; then
		$1=1
		stepsDone+=1
	else 
		echo "Place taken, retry"
		return 0
	fi
	return 1
}

echo "+------+------+------+"
echo "|  a1  |  a2  |  a3  |"
echo "+------+------+------+"
echo "|  b1  |  b2  |  b3  |"
echo "+------+------+------+"
echo "|  c1  |  c2  |  c3  |"
echo "+------+------+------+"

while [ $goal -eq 0 ] && [$stepsDone -lt 9]
do
	if [ $skp1 -eq 0 ]
	then
		echo "Player 1: "
		read input
		if [ "$input" = "a1" ]; then
			filled= $((check_filled &a1))
			if [ filled -eq 0 ]; then 
				continue
			check_alignment $a2 $a3 1
			check_alignment $b1 $c1 1
			check_alignment $b2 $c3 1
		elif [ "$input" = "a2" ]; then
			filled= $((check_filled &a2))
			if [ filled -eq 0 ]; then 
				continue
			check_alignment $a1 $a3 1
			check_alignment $b2 $c2 1
		elif [ "$input" = "a3" ]; then
			filled= $((check_filled &a3))
			if [ filled -eq 0 ]; then 
				continue
			check_alignment $a1 $a2 1
			check_alignment $b3 $c3 1
			check_alignment $c1 $b2 1
		elif [ "$input" = "b1" ]; then
			filled= $((check_filled &b1))
			if [ filled -eq 0 ]; then 
				continue
			check_alignment $b2 $b3 1
			check_alignment $a1 $c1 1
		elif [ "$input" = "b2" ]; then
			filled= $((check_filled &b2))
			if [ filled -eq 0 ]; then 
				continue
			check_alignment $a2 $c2 1
			check_alignment $b1 $b3 1
			check_alignment $a1 $c3 1
			check_alignment $c1 $a3 1
		elif [ "$input" = "b3" ]; then
			filled= $((check_filled &b3))
			if [ filled -eq 0 ]; then 
				continue
			check_alignment $a3 $c3 1
			check_alignment $b1 $b2 1
		elif [ "$input" = "c1" ]; then
			filled= $((check_filled &c1))
			if [ filled -eq 0 ]; then 
				continue
			check_alignment $c3 $c2 1
			check_alignment $a1 $b1 1
			check_alignment $b2 $a3 1
		elif [ "$input" = "c2" ]; then
			filled= $((check_filled &c2))
			if [ filled -eq 0 ]; then 
				continue
			check_alignment $c1 $c3 1
			check_alignment $b2 $a2 1
		elif [ "$input" = "c3" ]; then
			filled= $((check_filled &c3))
			if [ filled -eq 0 ]; then 
				continue
			check_alignment $c1 $c2 1
			check_alignment $a3 $b3 1
			check_alignment $a1 $b2 1
		else
			echo "Wrong input: retry"
			continue
		fi
		echo "+-----+-----+-----+"
		echo "|  $a1  |  $a2  |  $a3  |"
		echo "+-----+-----+-----+"
		echo "|  $b1  |  $b2  |  $b3  |"
		echo "+-----+-----+-----+"
		echo "|  $c1  |  $c2  |  $c3  |"
		echo "+-----+-----+-----+"
		skp1=0
		stepsDone=0
	fi
	if [ $goal -eq 1 ] 
	then 
		echo "Player 1 wins"
		break
	else 
		echo "Player 2: "
		read input
		if [ "$input" = "a1" ]; then
			if [ $a2 -eq 2 ] && [ $a3 -eq 2 ]; then
				goal=2
			elif [ $b1 -eq 2 ] && [ $c1 -eq 2 ]; then
				goal=2
			elif [ $b2 -eq 2 ] && [ $c3 -eq 2 ]; then
				goal=2
			fi
			if [ $a1 -eq 0 ]; then
				a1=2
				stepsDone+=1
			else 
				echo "Place taken, retry"
				skp1=1
				continue
			fi
		elif [ "$input" = "a2" ]; then
			if [ $a1 -eq 2 ] && [ $a3 -eq 2 ]; then
				goal=2
			elif [ $b2 -eq 2 ] && [ $c2 -eq 2 ]; then
				goal=2
			fi
			if [ $a2 -eq 0 ]; then
				a2=2
				stepsDone+=1
			else 
				echo "Place taken, retry"
				skp1=1
				continue
			fi
		elif [ "$input" = "a3" ]; then
			if [ $a2 -eq 2 ] && [ $a1 -eq 2 ]; then
				goal=2
			elif [ $b3 -eq 2 ] && [ $c3 -eq 2 ]; then
				goal=2
			elif [ $b2 -eq 2 ] && [ $c1 -eq 2 ]; then
				goal=2
			fi
			if [ $a3 -eq 0 ]; then
				a3=2
				stepsDone+=1
			else 
				echo "Place taken, retry"
				skp1=1
				continue
			fi
		elif [ "$input" = "b1" ]; then
			if [ $b2 -eq 2 ] && [ $b3 -eq 2 ]; then
				goal=2
			elif [ $a1 -eq 2 ] && [ $c1 -eq 2 ]; then
				goal=2
			fi
			if [ $b1 -eq 0 ]; then
				b1=2
				stepsDone+=1
			else 
				echo "Place taken, retry"
				skp1=1
				continue
			fi
		elif [ "$input" = "b2" ]; then
			if [ $a2 -eq 2 ] && [ $c2 -eq 2 ]; then
				goal=2
			elif [ $b1 -eq 2 ] && [ $b3 -eq 2 ]; then
				goal=2
			elif [ $a1 -eq 2 ] && [ $c3 -eq 2 ]; then
				goal=2
			elif [ $a2 -eq 2 ] && [ $c1 -eq 2 ]; then
				goal=2
			fi
			if [ $b2 -eq 0 ]; then
				b2=2
				stepsDone+=1
			else 
				echo "Place taken, retry"
				skp1=1
				continue
			fi
		elif [ "$input" = "b3" ]; then
			if [ $a3 -eq 2 ] && [ $c3 -eq 2 ]; then
				goal=2
			elif [ $b1 -eq 2 ] && [ $b2 -eq 2 ]; then
				goal=2
			fi
			if [ $b3 -eq 0 ]; then
				b3=2
				stepsDone+=1
			else 
				echo "Place taken, retry"
				skp1=1
				continue
			fi
		elif [ "$input" = "c1" ]; then
			if [ $c2 -eq 2 ] && [ $c3 -eq 2 ]; then
				goal=2
			elif [ $a1 -eq 2 ] && [ $b1 -eq 2 ]; then
				goal=2
			elif [ $b2 -eq 2 ] && [ $a3 -eq 2 ]; then
				goal=2
			fi
			if [ $c1 -eq 0 ]; then
				c1=2
				stepsDone+=1
			else 
				echo "Place taken, retry"
				skp1=1
				continue
			fi
		elif [ "$input" = "c2" ]; then
			if [ $c1 -eq 2 ] && [ $c3 -eq 2 ]; then
				goal=2
			elif [ $b2 -eq 2 ] && [ $a2 -eq 2 ]; then
				goal=2
			fi
			if [ $c2 -eq 0 ]; then
				c2=2
				stepsDone+=1
			else 
				echo "Place taken, retry"
				skp1=1
				continue
			fi
		elif [ "$input" = "c3" ]; then
			if [ $c1 -eq 2 ] && [ $c2 -eq 2 ]; then
				goal=2
			elif [ $a3 -eq 2 ] && [ $b3 -eq 2 ]; then
				goal=2
			elif [ $a1 -eq 2 ] && [ $b2 -eq 2 ]; then
				goal=2
			fi
			if [ $c3 -eq 0 ]; then
				c3=2
				stepsDone+=1
			else 
				echo "Place taken, retry"
				skp1=1
				continue
			fi
		else
			echo "Wrong input, retry."
			skp1=1
			continue
		fi
		echo "+-----+-----+-----+"
		echo "|  $a1  |  $a2  |  $a3  |"
		echo "+-----+-----+-----+"
		echo "|  $b1  |  $b2  |  $b3  |"
		echo "+-----+-----+-----+"
		echo "|  $c1  |  $c2  |  $c3  |"
		echo "+-----+-----+-----+"
		if [ $goal -eq 2 ] 
		then 
			echo "Player 2 wins"
			break
		fi
	fi
done