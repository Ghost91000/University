// Лабораторная работа №3 Комбинаторика

n = rand()*(17-11)+11
n = round(n)
m = rand()*(n-11)+11
m = round(m)
disp(n)
disp(m)


//Перестановка
fac = factorial(n)
disp('Перестановка')
disp(fac)

//Размещение
razm = factorial(n)/factorial(n-m)
disp('Размещение')
disp(razm)

//Сочетание
soch = factorial(n)/factorial(n-m)*factorial(m)
disp('Сочетание')
disp(soch)

//Выбор с повторением
disp('Выбор с повторением')
disp(n^m)
