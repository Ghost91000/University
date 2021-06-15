CREATE TABLE "Товары на складе"
("ID товара" Integer Not null,
"Номер склада" Integer Not null,
"Минимальный остаток" Varchar (40) Not null,
Количество Integer Not null);

CREATE TABLE Склады
("Номер склада" Integer primary key Not null,
Название Varchar (40) Not null,
Количество Integer Not null);