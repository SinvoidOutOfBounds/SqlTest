CREATE TABLE EarthProducts (ID int PRIMARY KEY IDENTITY, Name NVARCHAR(100) NOT NULL);

CREATE TABLE Categories (ID int PRIMARY KEY IDENTITY, Name NVARCHAR(100) NOT NULL);

CREATE TABLE Decom (
EarthProductsID int NOT NULL,
CategoriesID int NOT NULL,
FOREIGN KEY (EarthProductsID) REFERENCES EarthProducts(ID),
FOREIGN KEY (CategoriesID) REFERENCES Categories(ID));

INSERT INTO EarthProducts VALUES 
('Роза'),
('Ель'),
('Смородина'),
('Арбуз');

INSERT INTO Categories VALUES 
('Кустарник'),
('Цветок'),
('Дерево');

INSERT INTO Decom VALUES 
(1,2),
(2,3),
(3,1);

SELECT p.Name AS 'Продукт', c.Name AS 'Категория' FROM EarthProducts AS p
LEFT JOIN Decom AS d ON p.ID = d.EarthProductsID
LEFT JOIN Categories AS c ON c.ID = d.CategoriesID