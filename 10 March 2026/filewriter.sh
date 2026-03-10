#INCOMPLETE
echo "">dept.txt #overwrite
echo "enter text to be written to file (enter x to stop)"
read str
check="x"
while [ $str != $check ]
do 
#append
echo $str>>dept.txt
read str
done
sort dept.txt>sorteddept.txt
echo "The sorted file is:"
more dept.txt
