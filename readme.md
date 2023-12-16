# ДЗ по "Операционные системы и виртуализация (Linux) (семинары)"

## Семинар 1. Установка ОС Ubuntu в виртуальной машине. Работа в SSH-клиенте
* Задача 1. Установка Ubuntu в VB (начало)
  - Настроить ВМ и установить в неё Ubuntu.
  - Настройка ВМ.
  - Запускаем установку системы Ubuntu с комментариями
по всем вариантам выбора.
  - Ставим максимально простым способом (используем
весь диск, без LVM, вариант Minimal).

* Задача 1. Установка Ubuntu в VB (продолжение)
  - Завершение установки.
  - Запуск установленной системы.
  - Знакомство с элементами графического интерфейса
(приложения).
  - Запуск терминала.
  - Результат: установленная система

* Задача 2. Установка SSH-сервера в Ubuntu. Подключение по SSH из
  - хостовой системы.
  - Установить пакет SSH-сервера.
  - Далее подключиться к виртуальной машине из хостовой
системы.
  - Уточнить варианты настройки сети в VB – сетевой мост
или NAT

* Задача 3. Установка гостевых дополнений ОС в Ubuntu
  - Установить гостевые дополнения ОС и Midnight
commander

* Домашнее задание  
Условие:
  - Установить Ubuntu Desktop 22.04 в виртуальную
машину.
  - Установить гостевые дополнения ОС.
  - Установить Midnight Commander.
  - Установить SSH-соединение с виртуальной машиной
из хостовой.  

   Результат:  
  - Скриншот SSH-подключения к установленной системе с
   запущенным mc.

## Семинар 2. Работа с файлами и ссылками
* Домашнее задание
  - Используя команду cat, создать два файла с данными, а затем объединить их.
Просмотреть содержимое созданного файла. Переименовать файл, дав ему новое
имя.
  - Создать несколько файлов. Создать директорию, переместить файл туда. Удалить
все созданные в этом и предыдущем задании директории и файлы.
  - Создать файл file1 и наполнить его произвольным содержимым. Скопировать его в
file2. Создать символическую ссылку file3 на file1. Создать жесткую ссылку file4 на
file1. Посмотреть, какие айноды у файлов. Удалить file1. Что стало с остальными
созданными файлами? Попробовать вывести их на экран.
  - Дать созданным файлам другие, произвольные имена. Создать новую
символическую ссылку. Переместить ссылки в другую директорию.  
  
  Результат:
  - Текст команд, которые применялись при выполнении задания. Присылаем в формате
текстового документа: задание и команды для решения (без вывода). Формат - PDF
(один файл на все задания).

## Семинар 3. Права доступа и пользователи
* Домашнее задание  
Условие:
1. Создать два произвольных файла. Первому присвоить права на чтение и запись для владельца и группы,
только на чтение — для всех. Второму присвоить права на чтение и запись только для владельца.
Сделать это в численном и символьном виде.
2. Назначить новых владельца и группу для директории целиком.
3. Управление пользователями:
    - создать пользователя, используя утилиту useradd и adduser
    - удалить пользователя, используя утилиту userdel
4. Управление группами:
    - создать группу с использованием утилит groupadd и addgroup
    - попрактиковаться в смене групп у пользователей
    - добавить пользователя в группу, не меняя основной
5. Создать пользователя с правами суперпользователя. Сделать так, чтобы sudo не требовал пароль для выполнения команд.
6. *Используя дополнительные материалы, выдать одному из созданных пользователей право на выполнение ряда команд,
требующих прав суперпользователя (команды выбираем на своё усмотрение).
7. *Создать группу developer и нескольких пользователей, входящих в неё. Создать директорию для совместной работы.
Сделать так, чтобы созданные одними пользователями файлы могли изменять другие пользователи этой группы.
8. *Создать в директории для совместной работы поддиректорию для обмена файлами, но чтобы удалять файлы могли только
их создатели.
9. *Создать директорию, в которой есть несколько файлов. Сделать так, чтобы открыть файлы можно было, только зная имя
файла, а через ls список файлов посмотреть было нельзя.

* Результат:  
Текст команд, которые применялись при выполнении задания. Присылаем в формате текстового документа: задание
и команды для решения (без вывода). Формат — PDF (один файл на все задания).

## Семинар 4. Работа с пакетами. Планировщик cron
* Домашнее задание
1. Подключить дополнительный репозиторий на выбор: Docker, Nginx, Oracle MySQL
Установить любой пакет из этого репозитория
2. Установить и удалить deb-пакет с помощью dpkg
3. Установить и удалить snap-пакет.
4. Добавить задачу для выполнения каждые 3 минуты (создание директории, запись в файл)
5. *Подключить PPA-репозиторий на выбор. Установить из него пакет.
Удалить PPA из системы
6. *Создать задачу резервного копирования (tar) домашнего каталога пользователя
Реализовать с использованием пользовательских crontab-файлов

* Результат:  
Текст команд, которые применялись при выполнении задания. При наличи: часть
конфигурационных файлов, которые решают задачу.  
Присылаем в формате текстового документа: задание и команды для решения (без вывода).
Формат — PDF (один файл на все задания).

## Семинар 5. Настройка сети в Linux. Работа с IPtables
* Домашнее задание
1. Настроить статическую конфигурацию (без DHCP) в Ubuntu через ip и netplan. Настроить IP,
маршрут по умолчанию и DNS-серверы (1.1.1.1 и 8.8.8.8).
Проверить работоспособность сети
2. Настроить правила iptables для доступности сервисов на TCP-портах 22, 80 и 443. Также
сервер должен иметь возможность устанавливать подключения к серверу обновлений.
Остальные подключения запретить
3. Запретить любой входящий трафик с IP 3.4.5.6
4. *Запросы на порт 8090 перенаправлять на порт 80 (на этом же сервере)
5. *Разрешить подключение по SSH только из сети 192.168.0.0/24

* Результат:  
Текст команд, которые применялись при выполнении задания.
При наличии: часть конфигурационных файлов, которые решают задачу.
Присылаем в формате текстового документа: задание и команды для решения (без вывода).
Формат — PDF (один файл на все задания).