#!/bin/bash
# В параметрах при запуске скрипта передаются три целых числа.
# Вывести максимальное из них.
if [[ "$1" -gt "$2"  ]]
then
	if
		[[ "$1" -lt "$3"  ]]
	then echo "$3"
	else echo "$1"
	fi
else if [[ "$2" -gt "$3"  ]]
	then echo "$2"
	else echo "$3"
	fi
fi
