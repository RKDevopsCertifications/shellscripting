  GNU nano 6.2                                                                                                       FindNoArgs.sh                                                                                                                
#!/bin/bash/
#!/bin/bash

# pass number of arguments and count at the end of the class.
# author  rkdevops19

<< Des 
        pass the arguments and count at the end of  the program and print it.
Des

count(){
	echo "Number of arguments passed: $#"
	name=$1
	pass=$2
	echo "$name  $pass"
}

#main method and read data and call function
read -p " enter name :- " name
read -sp "enter password :" pass

count $name $pass

