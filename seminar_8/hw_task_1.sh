#!/bin/bash

# Написать скрипт очистки директорий. На вход принимает путь к директории.
# Если директория существует, то удаляет в ней все файлы с расширениями
# .bak, .tmp, .backup. Если директории нет, то выводит ошибку

directory=$1

if [ -d $directory ]
	then
		rm -f $directory/*.bak
		rm -f $directory/*.tmp
		rm -f $directory/*.backup 
		echo "Succes"
		exit 0
	else
		echo "Fail"
		exit 0
fi

