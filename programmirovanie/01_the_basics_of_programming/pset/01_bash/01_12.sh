#!/usr/bin/env bash

# В языке bash сочетание символов «$*» означает «все параметры командной 
# строки, кроме “нулевого”» (т.е. кроме имени самого скрипта). Добавим к
#  этому, что команда «date +%s» выдает текущее время в виде числа 
#  секунд, прошедших с 1 января 1970г. Зная это, напишите скрипт, 
#  который запускает на выполнение программу, имя и аргументы которой 
#  заданы параметрами командной строки, и после ее завершения печатает 
#  число секунд реального времени, которое прошло с момента ее запуска 
#  (погрешность в одну секунду в любую сторону считаем допустимой).

START=$(date +%s)
$*
END=$(date +%s)
echo $(( $END - $START ))
