#!/bin/bash

# Создать full.log, в который вывести строки файла
# /var/log/anaconda/X.log, содержащие предупреждения и
# информационные сообщения, заменив маркеры предупреждений и
# информационных сообщений на слова Warning: и Information:
# так, чтобы в получившемся файле сначала шли все предупреждения, а
# потом все информационные сообщения. Вывести этот файл на экран.

touch full.log
awk '{if ($3=="(WW)") {$3="Warning"; print}}' /var/log/anaconda/X.log > full.log
awk '{if ($3=="(II)") {$3="Information"; print}}' /var/log/anaconda/X.log >> full.log

