#!/bin/bash

##
## Name: sharpdoc
##
## Author: Dr Michael GUEDJ
## 
## Description: 
##   
##   Usage: sharpdoc <some_file>
##   --> generates a "README.txt" file containing
##   ___ the part of <some_file> beginning with "##"
##   
##
## Version: 0.1
##
## Date: 13/11/2019
##
## License: MIT LICENSE 
## -- see the file MIT-LICENSE.txt
##

function usage 
{
	echo "Usage: sharpdoc <some_file>"
	echo "--> generates a \"README.txt\" file containing"
	echo "___  the part of <some_file> beginning with \"##\""
	exit 1
}


if [ $# -lt 1 ]
then 
	echo "!: 1 argument (at least) is required."
	usage
fi

if [ ! -e $1 ]
then 
	echo "The given argument must be in the current directory."
	usage
fi

if [ -d $1 ]
then 
	echo "The given argument can't be a directory."
	usage
fi


echo "==============" > README.txt
echo "   README " >> README.txt
echo "==============" >> README.txt

cat $1 | grep "^##" | sed "s/^##//" >> README.txt


echo -e "\n\n Install " >> README.txt
echo -e "-----------\n" >> README.txt


echo -e "\n\n Uninstall " >> README.txt
echo -e "-----------\n" >> README.txt


