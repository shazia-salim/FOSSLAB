#Calculator

s=0
i=y

echo "Enter First Operand"
read n1
echo "Enter Second Operand"
read n2

while [ $i = "y" ]
do
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "Enter your choice"
read ch
case "$ch" in
  1)s=`expr $n1 + $n2`
   echo "Sum="$s;;
  2)s=`expr $n1 - $n2`
   echo "Sub="$s;;
  3)s=`expr $n1 \* $n2`
   echo "Product="$s;;
  4)s=`expr $n1 / $n2`
   echo "Div="$s;;
  *)echo "Invalid Choice";;
esac

echo "Do you want to continue?"
read i
if [ $i != "y" ]
then 
  exit
fi
  done
