# !/bin/bash
if [ $# = 2 ]
then
	echo "The number of argument is correct"
else
	echo "The number of arguments is incorrect"
fi
if [ -f $1 ]
then
        echo "$1 exists."
else
        echo "$1 doesnt exist."
fi
if grep -qF "$2" ulist.txt;
then
	echo "$2 username exists"
else
	echo "$2 username doesnt exist"
	echo "$2">>ulist.txt
fi
cat ulist.txt
