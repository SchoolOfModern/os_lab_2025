#!/bin/bash

# Проверяем, что аргументы есть
if [ $# -eq 0 ]; then
    echo "Usage: $0 number1 number2 ..."
    exit 1
fi

count=$#  # Количество аргументов
sum=0

# Суммируем все аргументы
for num in "$@"; do
    sum=$((sum + num))
done

# Вычисляем среднее арифметическое
average=$((sum / count))

# Выводим результаты
echo "Количество чисел: $count"
echo "Сумма чисел: $sum"
echo "Среднее арифметическое: $average"
