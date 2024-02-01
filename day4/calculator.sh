option="${1}" 
num1=${2}
num2=${3}
case ${option} in 
   -add) answer=$((num1+num2))
      echo "Sum is $answer"
      ;; 
   -sub) answer=$((num1-num2))
      echo "Difference is $answer"
      ;; 
   -mul) answer=$((num1*num2))
      echo "Product is $answer"
      ;; 
   -div) answer=$((num1/num2)) 
    rem=$((num1%num2)) 
      echo "Quotient is $answer"
      echo "Remainder is $rem"
      ;; 
   *)  
      echo "`basename ${0}`:usage: [-add for Addition] | [-sub for Subtraction] | [-mul for Multiplication] | [-div for Division] " 
      exit 1 # Command to come out of the program with status 1
      ;; 
esac 