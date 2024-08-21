echo "-----------------------------"
echo " print  the numbers" 
echo "-----------------------------"
read -p "Enter the number , you want to print it up to : " number
for i in $(seq 1 $number)
do
	echo $i 
done

