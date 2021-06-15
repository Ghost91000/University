--1. Создать базу данных интернет магазина ITCShop.

USE master ;  
GO  
DROP DATABASE ITCShop ;  
GO  

CREATE DATABASE ITCShop
ON PRIMARY (NAME = cursach, FILENAME = 'E:\database\cursach.mdf')
LOG ON (NAME = log_file, FILENAME = 'E:\database\log_file.mdf')               
COLLATE Cyrillic_General_CI_AS
GO

USE ITCShop
GO

--2. Создать в базе данных таблицы согласно рис.2.

CREATE TABLE Клиенты
(
	ID int NOT NULL IDENTITY,
	Имя nvarchar(20) NULL,
	Фамилия nvarchar(20) NULL,
	Отчество nvarchar(20) NULL,
	[Адрес] nvarchar(50) NULL,
	Город nvarchar(20) NULL,
	Телефон char(12) NULL,
	ТекДата date DEFAULT GETDATE()
)  
GO

CREATE TABLE Сотрудники
(
	ID int NOT NULL IDENTITY,
	Имя nvarchar(20) NOT NULL,
	Фамилия nvarchar(20) NULL,
	Отчество nvarchar(20) NOT NULL,
	Должность  nvarchar(25) NOT NULL,
	Зарплата money NOT NULL,
	Премия money NULL
)  
GO

CREATE TABLE СотрудникиИнф
(                                      
	ID int NOT NULL,  
	СемейноеПолож varchar(10) NOT NULL,
	ДатаРождения date NOT NULL, 
	[Адрес] nvarchar(50) NOT NULL,
	Телефон char(12) NOT NULL
)
GO	

CREATE TABLE Продукт
(
	ID int NOT NULL IDENTITY,
	Имя nvarchar(50) NOT NULL,          
)
GO

CREATE TABLE ИнофОПродукте
(
	ID int NOT NULL,
	Цвет nchar(20) NULL,
    [Описание] nvarchar(max) NULL,     
)
GO

CREATE TABLE СкладЗапас
(
	ID int NOT NULL,
	Остаток int DEFAULT 0
)
GO

CREATE TABLE Заказ
(
	ID int NOT NULL IDENTITY,
	IDКлиента int NULL,  
	IDСотрудника int NULL,
	ТекДата date DEFAULT GETDATE()
)  
GO

CREATE TABLE ИнфЗаказ
(
	IDЗаказа int NOT NULL,
	Количество int NOT NULL,
	ID int NULL,
	Остаток int NOT NULL,
	Цена money NOT NULL,
	Итого AS CONVERT(money, Количество*Цена) 
)  
GO


--3. Установить связи между таблицами согласно, необходимо предусмотреть условия ссылочной целостности.


ALTER TABLE Клиенты ADD 
	CONSTRAINT PK_Customers PRIMARY KEY(ID) 
GO

ALTER TABLE Сотрудники ADD 
	CONSTRAINT PK_Employees PRIMARY KEY(ID) 
GO

ALTER TABLE СотрудникиИнф ADD 
	CONSTRAINT UQ_EmployeesInfo UNIQUE(ID)
GO

ALTER TABLE СотрудникиИнф ADD 
	CONSTRAINT FK_EmployeesInfo_Employees FOREIGN KEY (ID)
	REFERENCES Сотрудники(ID) 
	ON DELETE CASCADE
GO

ALTER TABLE Продукт ADD 
	CONSTRAINT PK_Products PRIMARY KEY (ID) 
GO

ALTER TABLE ИнофОПродукте ADD 
	CONSTRAINT UQ_ProductDetails UNIQUE(ID)
GO

ALTER TABLE ИнофОПродукте ADD 
	CONSTRAINT FK_ProductDetails_Products FOREIGN KEY (ID)
	REFERENCES Продукт(ID) 
	ON DELETE CASCADE
GO

ALTER TABLE СкладЗапас ADD 
	CONSTRAINT UQ_Stocks UNIQUE(ID)
GO

ALTER TABLE СкладЗапас ADD 
	CONSTRAINT FK_Stocks_Products FOREIGN KEY (ID) 
	REFERENCES Продукт(ID) 
	ON DELETE CASCADE
GO

ALTER TABLE Заказ ADD 
	CONSTRAINT PK_Orders PRIMARY KEY (ID) 
GO

ALTER TABLE Заказ ADD CONSTRAINT
	FK_Orders_Customers FOREIGN KEY(IDКлиента) 
	REFERENCES Клиенты(ID) 
	ON DELETE SET NULL  
GO

ALTER TABLE Заказ ADD CONSTRAINT
	FK_Orders_Employees FOREIGN KEY(IDСотрудника) 
	REFERENCES Сотрудники(ID)
	ON DELETE SET NULL  
GO

ALTER TABLE ИнфЗаказ ADD CONSTRAINT
	PK_OrderDetails PRIMARY KEY
	(IDЗаказа,Количество) 
GO

ALTER TABLE ИнфЗаказ ADD CONSTRAINT
	FK_OrderDetails_Orders FOREIGN KEY(IDЗаказа) 
	REFERENCES Заказ(ID) 
	ON DELETE CASCADE
GO

ALTER TABLE ИнфЗаказ ADD CONSTRAINT
	FK_OrderDetails_Products FOREIGN KEY(ID) 
	REFERENCES Продукт(ID) 
		ON DELETE SET NULL 
GO

--4. Создать пользовательские ограничений

ALTER TABLE Клиенты
ADD CONSTRAINT CN_Customers_Phone
CHECK (Телефон LIKE '([0-9][0-9][0-9])[0-9][0-9][0-9][0-9][0-9][0-9][0-9]')	 
GO

ALTER TABLE СотрудникиИнф
ADD CONSTRAINT CN_EmployeesInfo_Phone
CHECK (Телефон LIKE '([0-9][0-9][0-9])[0-9][0-9][0-9][0-9][0-9][0-9][0-9]')	 
GO

ALTER TABLE СотрудникиИнф
ADD CONSTRAINT CN_EmployeesInfo_BirthDate 
CHECK (ДатаРождения BETWEEN  DATEADD(YEAR, -60, GETDATE()) AND DATEADD(YEAR, -18, GETDATE()))
	
ALTER TABLE СотрудникиИнф
ADD CONSTRAINT CN_EmployeesInfo_MaritalStatus
CHECK (СемейноеПолож IN ('Женат','Не женат', 'Замужем','Не замужем'))	 
GO

ALTER TABLE Сотрудники
ADD CONSTRAINT CN_Employees_PriorSalary
CHECK (Премия < Зарплата)	 
GO

ALTER TABLE СкладЗапас
ADD CONSTRAINT CN_Stocks_Qty
CHECK (Остаток >= 0)	 
GO


-- 5. Наполнить таблицы данными. 


INSERT Клиенты 
(Имя, Фамилия, Отчество, [Адрес], Город, Телефон, ТекДата)
VALUES
('Виктор','Викторович','Прокопенко','Руденко 21а, 137','Тернополь','(063)4569385',DATEADD(DAY, -85, GETDATE())),
('Антон','Олегович','Крук','Бажова 77','Киев','(093)1416433',DATEADD(DAY, -85, GETDATE())),
('Оксана','Владимировна','Десятова','Бажана 6, 22','Киев','(068)0989367',DATEADD(DAY, -85, GETDATE())),
('Антонина','Дмитриевна','Шевченко','Мышуги 25','Львов','(098)4569111',DATEADD(DAY, -65, GETDATE())),
('Анатолий','Петрович','Дмитров','Дружнова 15','Львов','(068)2229325',DATEADD(DAY, -45, GETDATE())),
('Иван','Иванович','Кобзар','Ковпака 24, 17','Киев','(063)1119311',DATEADD(DAY, -45, GETDATE())),
('Виктор','Олегович','Грачь','Лесная 21','Тернополь','(068)4569344',DATEADD(DAY, -35, GETDATE())),
('Ольга','Алексеевна','Буткова','Дорожная 77, 99','Николаев','(050)4569255',DATEADD(DAY, -25, GETDATE())),
('Алина','Михайловна','Мелова','Контрактна 20','Николаев','(050)4539333',DATEADD(DAY, -15, GETDATE())),
('Михаил','Андреевич','Савицкий','Медовая 1','Киев','(063)9999380',DATEADD(DAY, -5, GETDATE())),
('Артем','Иванович','Крава','Артема 23','Львов','(067)9995558',DATEADD(DAY, -15, GETDATE()));
GO

INSERT Сотрудники
(Имя, Фамилия, Отчество, Должность, Зарплата, Премия)
VALUES
('Анатолий', 'Владимирович', 'Десятов', 'Главный директор', 10000, 2000),
('Андрей', 'Антонович', 'Зарицкий', 'Менеджер', 7000, 1500),
('Олег', 'Артемович', 'Сурков', 'Менеджер по продажам', 5000, 500),
('Максим', 'Иванович', 'Рудаков', 'Менеджер по продажам', 5000, 500),
('Ирина', 'Михайловна', 'Макар', 'Менеджер', 7000, 1500),
('Юлия', 'Борисовна', 'Таран', 'Менеджер по продажам', 7000, 1500);
GO

INSERT СотрудникиИнф
(ID, СемейноеПолож, ДатаРождения, [Адрес], Телефон)
VALUES
(1, 'Не женат', '08/03/1970', 'Викторкая 16/7','(067)4564489'),
(2, 'Женат',    '09/09/1985', 'Малинская 15','(050)0564585'),
(3, 'Не женат', '12/11/1990', 'Победы 16, 145','(068)4560409'),
(4, 'Не женат', '01/11/1988', 'Антонова 11','(066)4664466'),
(5, 'Замужем',  '08/08/1990', 'Руденко 10, 7','(093)4334493'),
(6, 'Замужем',  '01/10/1994', 'Просвещения 7','(063)4114141');
GO

INSERT Продукт
(Имя)
VALUES
('Ноутбук Asus D345'),
('Ноутбук HP Pavilion 15-p032er'),
('Ноутбук Dell Inspiron 5555'),
('Нетбук Acer Aspire ES1'),
('Нетбук Lenovo Flex 10'),
('Нетбук Dell Inspiron 3147'),
('Смартфон Samsung Galaxy S6 SS 32GB'),
('Смартфон Apple iPhone 6'),
('Фотоаппарат Canon PowerShot SX400'),
('Телевизор LG 55LB631V');
GO

INSERT ИнофОПродукте
(ID, Цвет, [Описание])
VALUES
(1, 'Черный', 'Экран 14" (1366x768) HD LED, глянцевый / Intel Celeron N2840 (2.16 ГГц) / RAM 2 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.09 кг'),
(2, 'Серый', 'Экран 15.6" (1366x768) HD LED, глянцевый / AMD Quad-Core A6-6310 (1.8 - 2.4 ГГц) / RAM 4 ГБ / HDD 500 ГБ / AMD Radeon R4 + AMD Radeon R7 M260, 2 ГБ / DVD Super Multi / LAN / Wi-Fi / Bluetooth 4.0 / веб-камера / DOS / 2.44 кг'),
(3, 'Черный', 'Экран 15.6" (1366x768) HD WLED, глянцевый / AMD Quad-Core A6-7310 (2.0 ГГц) / RAM 4 ГБ / HDD 500 ГБ / AMD Radeon R5 M335, 2 ГБ / DVD±RW / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.3 кг'),
(4, 'Черный', 'Экран 11.6'' (1366x768) HD LED, матовый / Intel Celeron N2840 (2.16 ГГц) / RAM 2 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linpus / 1.29 кг'),
(5, 'Черный', 'Экран 10.1" (1366x768) HD LED, сенсорный, глянцевый / Intel Celeron N2830 (2.16 ГГц) / RAM 2 ГБ / HDD 320 ГБ / Intel HD Graphics / без ОД / Wi-Fi / Bluetooth / веб-камера / Windows 8.1 Pro 64bit (Ukrainian language) / Microsoft Office Pro Academic 2013 (Ukrainian language) / 1.2 кг'),
(6, 'Черный', 'Экран 11.6" IPS (1366x768) HD LED, сенсорный, глянцевый / Intel Pentium N3530 (2.16 - 2.58 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / Wi-Fi / Bluetooth / веб-камера / Windows 8.1 / 1.41 кг'),
(7, 'Белый', 'Экран 5.1" Super AMOLED (2560х1440, сенсорный, емкостный, Multi-Touch) / моноблок / Exynos 7420 (Quad 2.1 ГГц + Quad 1.5 ГГц) / камера 16 Мп + фронтальная 5 Мп / Bluetooth 4.1 / Wi-Fi a/b/g/n/ac / 3 ГБ оперативной памяти / 32 ГБ встроенной памяти / разъем 3.5 мм / LTE / GPS / ГЛОНАСС / OC Android 5.0 / 143.4 x 70.5 x 6.8 мм, 138 г'),
(8, 'Черный', 'Экран: 4.7" IPS LCD (1334x750 точек) с LED-подсветкой / 16 млн. цветов / сенсорный, емкостной / стойкое к царапинам стекло Ion-X Glass с олеофобным покрытиемВстроенная память: 16 ГБ'),
(9, 'Черный', 'Матрица 1/2.3", 16 Мп / Зум: 30х (оптический), 4х (цифровой) / поддержка карт памяти SD, SDHC, SDXC / LCD-дисплей 3" / HD-видео / питание от литий-ионнного аккумулятора / 104.4 x 69.1 x 80.1 мм, 313 г'),
(10, 'Черный', 'Диагональ экрана: 55" Поддержка Smart TV: Есть Разрешение: 1920x1080 Wi-Fi: Да Диапазоны цифрового тюнера: DVB-S2, DVB-C, DVB-T2 Частота развертки панели: 100 Гц Частота обновления: 500 Гц (MCI)');
GO

INSERT СкладЗапас
(ID, Остаток)
VALUES
(1, 20),
(2, 10),
(3, 7),
(4, 8),
(5, 9),
(6, 5),
(7, 12),
(8, 54),
(9, 8),
(10, 7);
GO

INSERT Заказ
(IDКлиента, IDСотрудника, ТекДата)
VALUES
(1,3, DATEADD(DAY, -85, GETDATE())),
(2,6, DATEADD(DAY, -85, GETDATE())),
(3,4, DATEADD(DAY, -85, GETDATE())),
(3,NULL, DATEADD(DAY, -75, GETDATE())),
(2,3, DATEADD(DAY, -65, GETDATE())),
(4,6, DATEADD(DAY, -65, GETDATE())),
(1,3, DATEADD(DAY, -55, GETDATE())),
(5,3, DATEADD(DAY, -45, GETDATE())),
(6,3, DATEADD(DAY, -45, GETDATE())),
(1,4, DATEADD(DAY, -45, GETDATE())),
(2,NULL, DATEADD(DAY, -45, GETDATE())),
(7,3, DATEADD(DAY, -35, GETDATE())),
(6,4,	 DATEADD(DAY, -35, GETDATE())),
(3,NULL, DATEADD(DAY, -35, GETDATE())),
(5,6, DATEADD(DAY, -35, GETDATE())),
(8,3, DATEADD(DAY, -25, GETDATE())),
(5,4, DATEADD(DAY, -25, GETDATE())),
(7,4, DATEADD(DAY, -25, GETDATE())),
(7,3, DATEADD(DAY, -15, GETDATE())),
(9,3, DATEADD(DAY, -15, GETDATE())),
(8,4, DATEADD(DAY, -15, GETDATE())),
(10,NULL, DATEADD(DAY, -15, GETDATE())),
(11,3, DATEADD(DAY, -5, GETDATE())),
(10,4, DATEADD(DAY, -5, GETDATE()));
GO

INSERT ИнфЗаказ
(IDЗаказа, Количество, ID, Остаток, Цена)
VALUES
(1,1,1,1,295),
(2,1,2,1,445),
(2,2,6,1,450),
(3,1,4,1,422),
(3,2,9,4,218),
(4,1,7,1,450),
(5,1,9,1,220),
(6,1,8,1,550),
(7,1,8,2,550),
(7,2,9,1,222),
(7,3,5,1,289),
(8,1,3,1,518),
(8,2,9,1,222),
(9,1,6,1,451),
(10,1,10,1,600),
(11,1,7,3,452),
(12,1,7,2,452),
(13,1,9,1,222),
(13,2,8,1,550),
(13,3,7,1,455),
(14,1,9,2,222),
(15,1,3,1,520),
(16,1,4,2,420),
(17,1,10,2,600),
(18,1,10,1,600),
(19,1,7,3,453),
(19,2,8,2,550),
(20,1,5,2,300),
(21,1,4,1,422),
(21,2,5,1,305),
(22,1,1,1,305),
(22,2,2,1,450),
(23,1,1,3,300),
(23,2,2,1,450),
(23,3,3,1,525),
(23,4,4,2,420),
(24,1,6,4,450);
GO

--SELECT * FROM Клиенты
SELECT * FROM Сотрудники
--SELECT * FROM СкладЗапас
--SELECT * FROM СотрудникиИнф
SELECT * FROM Заказ
--SELECT * FROM Продукт
--SELECT * FROM ИнофОПродукте
SELECT * FROM ИнфЗаказ



--------------------Запросы--------------------

--ВЫВОД КЛИЕНТОВ, ЧТО НЕ ЖИВУТ В КИЕВЕ И ЛЬВОВЕ
SELECT Имя, Отчество, Город FROM Клиенты
WHERE Город NOT IN ('Киев', 'Львов')

-----------------------------------------------

SELECT * FROM ИнфЗаказ INNER JOIN Продукт
ON ИнфЗаказ.ID = Продукт.ID

-----------------------------------------------

INSERT INTO Клиенты(Имя,Фамилия,Отчество,Адрес,Город,Телефон,ТекДата)
VALUES 
('Игорь','Викторович','Шевченко','Руденко 23а, 62','Хорьков','(050)3962960',GETDATE())

-----------------------------------------------

DELETE FROM Клиенты
WHERE ID = 12

-----------------------------------------------

SELECT Клиенты.Имя, Клиенты.Отчество, Продукт.Имя, ИнфЗаказ.Количество, ИнфЗаказ.Цена, Заказ.ТекДата
FROM Заказ INNER JOIN Клиенты
	ON Клиенты.ID = Заказ.IDКлиента
INNER JOIN ИнфЗаказ ON ИнфЗаказ.IDЗаказа = Заказ.ID
INNER JOIN Продукт ON ИнфЗаказ.ID = Продукт.ID

-----------------------------------------------

SELECT Продукт.Имя, ИнфЗаказ.Цена
FROM ИнфЗаказ INNER JOIN Продукт ON ИнфЗаказ.ID = Продукт.ID
WHERE ИнфЗаказ.Цена > (SELECT AVG(Цена) FROM ИнфЗаказ)

-----------------------------------------------

SELECT Сотрудники.Имя, Сотрудники.Должность, Заказ.ID, Продукт.Имя
FROM Заказ INNER JOIN Сотрудники ON Заказ.IDСотрудника =  Сотрудники.ID
INNER JOIN ИнфЗаказ ON ИнфЗаказ.IDЗаказа = Заказ.ID
INNER JOIN Продукт ON ИнфЗаказ.ID = Продукт.ID


-----------------------------------------------