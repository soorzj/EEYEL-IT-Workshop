echo "enter number 1"
read n1
echo "enter number 2"
read n2
if [ $n1 -eq $n2 ]
then
	echo "Numbers are equal"
elif [ $n1 -lt $n2 ]
then
	echo "$n2 is greater than $n1"
elif [ $n1 -gt $n2 ]
then
        echo "$n1 is greater than $n2"
fi
