#!/bin/bash
# Подсчитать общее количество строк в файлах, находящихся в
# директории /var/log/ и имеющих расширение log.

count=0
for str in $(ls /var/log)
do
	if echo $str | grep -q ".\.log$"; then
		let count+=$(wc -l "/var/log/"$str | awk '{print $1}');
	fi
done
echo $count
