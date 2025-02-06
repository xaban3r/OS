#!/bin/bash
# Создать файл info.log, в который поместить все строки из файла
# /var/log/anaconda/syslog, второе поле в которых равно INFO.

# 12:03:58,864 INFO kernel:BIOS-e820:

touch info.log
grep '[0-9:,]\+ INFO' /var/log/anaconda/syslog > info.log
