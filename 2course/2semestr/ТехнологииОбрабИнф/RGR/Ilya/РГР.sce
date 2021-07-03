// Курсовая работа по дисциплине
// "Технологии обработки информации"
// на тему
// "Обработка экспериментальных данных"
// Вариант 20

// Исходные последовательности
x = [1 4 6.7 7 7.2 7.8 8.6]
y = [0 1.7 10.82 14.7 9.62 17.68 18.86]
// Заданное значение для прогноза
t = 5

// Вычисление коэффициента корреляции
sumX = sum(x)
sumY = sum(y)
sum2X = sum(x.^2)
sum2Y = sum(y.^2)
sumXY = sum(x.*y)
xMean = sumX/length(x)
yMean = sumY/length(y)
s2x = sum2X/length(x) - xMean.^2
s2y = sum2Y/length(y) - yMean.^2
sXY = sumXY/length(x) - xMean * yMean
rXY = sXY/(sqrt(s2x)*sqrt(s2y))


[a, b, sig] = reglin(x, y);

f = a*t + b

// Вывод результатов и командную строку
disp('Коэффициент корреляции ')
disp(rXY)
disp('Коэффициент а линии регрессии ')
disp(a)
disp('Коэффициент b линии регрессии ')
disp(b)
disp('Прогноз спроса на товар при пробных продажах')
disp('при цене')
disp('5')
disp(f)
disp('Ошибка регрессии ')
disp(sig)

// Построение графика линии регрессии
plot2d(x, y, -1)
plot(x, a*x + b)
