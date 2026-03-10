#overwrite
echo "electronics">dept.txt
#append
echo "computer">>dept.txt
#sort to itself
sort< dept.txt
#run "less dept.txt" to see output
#sort to another file
sort dept.txt>sorteddept.txt
#run "less sorteddept.txt" to see output
echo "The sorted file is:"
more dept.txt
