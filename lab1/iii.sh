#!bin/bash

echo $'Enter the action number:\n1)nano\n2)vi\n3)links\n4)exit'
read n
case $n in
	'1')
	nano
	;;
	'2')
	vi
	;;
	'3')
	links
	;;
	'4')
	exit
	;;
esac
