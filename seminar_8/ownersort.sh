#!/bin/bash

# * Создать скрипт ownersort.sh, который в заданной папке копирует файлы
# в директории, названные по имени владельца каждого файла.
# Учтите, что файл должен принадлежать соответствующему владельцу



# Дополнительный параметр скрипта (директория)
dir=$1

# Проверка правильности пути
if [ ! -d $dir ]
        then
                echo "Такой папки нет"
                exit 1
fi


# Содержание выбранной папки
folder_list=$(ls -A $dir)

count_file=0
count_folder=0

# Проверим содержимое выбранной папки
for item in $folder_list
	do
		if [ -f $dir/$item ]
			# Если это файл, то...
        		then
				# Сохраняем имя владельца
				user_name=$(stat -c%U $dir/$item)
				if [ -d $dir/$user_name ]
					# Если каталог с именем создателя файла есть, то...
					then
						# Перемещаем файл в каталог
						mv $dir/$item $dir/$user_name/$item
						# Подсчет перемещенных файлов
						count_file=$(($count_file+1))
					else
						# Создаем каталог и перемещаем туда файл
						mkdir $dir/$user_name
						mv $dir/$item $dir/$user_name/$item
						# Подсчет созданных папок и перемещенных файлов
						count_folder=$(($count_folder+1))
						count_file=$(($count_file+1))
				fi
		fi
done

# Информация о результатах выполнения скрипта
echo "Создано $count_folder папок, перемещено $count_file файлов в папке $dir"
exit 0
