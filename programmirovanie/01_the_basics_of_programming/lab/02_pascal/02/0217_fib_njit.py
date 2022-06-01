#!/usr/bin/env python3

from numba import njit

n = int(input("Номер элемента ряда Фибоначчи: "))

# njit не умеет в длинную арифметику, т.е. int у неё не бесконечной длины
@njit
def fib(n):
    fib1 = 1
    fib2 = 1
    for _ in range(n-2):
        fib_sum = fib1 + fib2
        fib1 = fib2
        fib2 = fib_sum
    return fib2

print("Значение этого элемента:", fib(n))
