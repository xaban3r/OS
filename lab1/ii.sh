#! bin/bash
# Считывать строки с клавиатуры, пока не будет введена строка "q". После
# этого вывести последовательность считанных строк в виде одной строки.
result=""
while true
do
read str
	if [[ "$str" == "q"  ]]
	then
		break
	else
		result+="$str"
	fi
done
echo "$result"
