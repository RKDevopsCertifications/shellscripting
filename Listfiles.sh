echo "----------------------"
echo "list out files in directory"
DIRECTORY="/home/rkdevops19/Scripts"
for file in $DIRECTORY/*.sh
do
	echo $file
done

