#!/bin/sh

cat packagelist.txt | while read a b
do
    echo "start to install" $a
		apt-get install -y $a
		if [ $? -ne 0 ]; then
    	echo "failed"
			exit
		else
    	echo "succeed"
		fi
done
