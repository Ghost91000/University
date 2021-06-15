CREATE TABLE Товары
(ID Integer primary key Not null,
"ID Производителя" Integer Not null,
Описание Varchar (120) Not null,
Название Varchar (120) Not null,
"Средняя закупочная цена" money Not null,
Скидка Decimal (4,2)  Not null,
"Условия хранениня" Varchar (120) Not null,
"Срок годности" Varchar (120) Not null);