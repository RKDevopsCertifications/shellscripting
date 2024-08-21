dir="/home/rkdevops19/Scripts"
file="$dir/Hello.sh"
ls -l "$file"
while true
do
        if [ -f "$file" ]; then
                echo " file is matched"
                break
        fi
        echo " checking for Hello.sh" 
done
