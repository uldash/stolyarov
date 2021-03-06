#!/usr/bin/env bash


# Напишите скрипт, получающий ровно один параметр – имя директории, 
# которую нужно создать; создав её, скрипт должен разместить в этой 
# директории символические ссылки на каждый из файлов, имеющихся в 
# текущей директории (за исключением свежесозданной директории, если 
# она создана внутри текущей), причем имена ссылок должны быть 
# образованы из слова file и порядкового номера 
# (file1, file2, …, file123, …). Если по каким-то причинам директорию 
# не удаётся создать (например, она уже существует), скрипт должен 
# выдать сообщение об ошибке и завершиться, не создавая никаких ссылок.

if [ $# -ne 1 ]; then
    echo 'run script: ./<script name>.sh [directory]'
    exit 1
fi

if [ -d $1 ]; then
    echo "error, dirrectory $1 if already exist"
    exit 1
else
    FILES=$(ls)
    mkdir $1
    COUNT=0
    for F in $FILES; do
        COUNT=$(( $COUNT + 1 ))
        ln -s $PWD/$F "$1/file$COUNT"
    done
fi