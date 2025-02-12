#!/bin/bash
#  Вывести три наиболее часто встречающихся слова из man по команде
# bash длиной не менее четырех символов.


man bash | tr -d '.:,' | tr -s ' \t' '\n' | grep -e '^$' -v | sort | uniq -d -i -c | sort -n | tail -n3

