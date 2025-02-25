#!bin/bash
# Подсчитать количество процессов, запущенных пользователем user, и
# вывести в файл получившееся число, а затем пары PID:команда для
# таких процессов.

ps aux | awk '$1 == "user" {print $2, ":", $NF}' > i_output.txt
process_count=$(wc -l i_output.txt | awk '{print $1}')
sed -i '1s/^/'"$process_count"'\n/' i_output.txt
