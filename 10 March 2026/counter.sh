for i in {1..10}
do
echo "Counter:$i"
done
for i in {1..10..2}
do
echo "Counter:$i"
done
#for the fractional step we use seq
for i in $(seq 1 2.5 10)
do
echo "Counter:$i"
done
