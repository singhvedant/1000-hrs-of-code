echo "Enter First Number:"
read addr1
echo "Enter Second Number:"
read addr2

echo "Press 1 for Addition, 2 for Substraction, 3 for Multiplication and 4 for Division"
read input 

if [ $input -eq 1 ]; then
	echo "Sum : $((addr1+addr2))"
elif [ $input -eq 2 ]
then
	echo "Sub : $((addr1-addr2))"
elif [ $input -eq 3 ]; then
	echo "Mul : $((addr1+addr2))"
elif [ $input -eq 4 ] 
then
	echo "Div : $((addr1+addr2))"
elif [ $input -eq 5 ]
	echo "Mod : $((addr1%addr2))"
else 
	echo "Error"
fi
