#! bin/bash
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
