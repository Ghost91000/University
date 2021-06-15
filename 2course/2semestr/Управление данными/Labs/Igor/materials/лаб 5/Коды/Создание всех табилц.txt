CREATE TABLE Отделы
("Шифр отдела" Integer primary key Not null,
Наименование Varchar (100) Not null,
Этаж Integer Not null);

CREATE TABLE Продавцы
("Шифр продавца" Integer primary key Not null,
"Шифр отдела" Integer Not null,
ФИО Varchar (100) Not null,
Возраст Integer Not null,
Пол Varchar (40) Not null);

CREATE TABLE Продажи
("Шифр отдела" Integer Not null,
"Шифр продавца" Integer Not null,
"Шифр товара" Integer Not null,
Дата Date Not null,
Колличество Decimal (4,2) Not null);

CREATE TABLE Товары
("Шифр товара" Integer primary key Not null,
Наименование Varchar (100) Not null,
"Вид единицы измерения" Varchar (40) Not null,
"Стоимость единицы измерения" Money Not null);