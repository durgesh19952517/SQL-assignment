--1.Desgin the above database with following table by applying Primary key and Foreign key

	CREATE DATABASE RESTAURANT;
	

	--DESIGN CUSTOMER TABLE
	CREATE TABLE Customer
	(
	Id int NOT NULL PRIMARY KEY,
	FirstName nvarchar(40) NOT NULL,
	LastName nvarchar(40),
	City nvarchar(40),
	Country nvarchar(40),
	Phone nvarchar(40)
	);

	--Index for Customer name
    CREATE INDEX IndexOrderCustomerName
    ON Customer(FirstName,LastName);


	--DESIGN ORDER TABLE
	CREATE TABLE OrderO
	(
	Id int NOT NULL PRIMARY KEY,
	OrderNumber nvarchar(10),
	CustomerId int FOREIGN KEY REFERENCES Customer(Id),
	TotalAmount decimal(12,2),
	OrderDate datetime2 NOT NULL
	);
    
	--Index for OrderO table
	CREATE INDEX IndexOrderCustomerId
    ON OrderO(CustomerId);
    CREATE INDEX IndexOrderOrderDate
    ON OrderO(OrderDate);

	--DESIGN TABLE PRODUCT
	CREATE TABLE Product
	(
	id int PRIMARY KEY,
	ProductName nvarchar(50),
	UnitPrice decimal(12,2),
	Package nvarchar(30),
	IsDiscontinued bit
	);

	--Index for Product table 
    CREATE INDEX IndexProductSupplierId
    ON Product(ProductId);
    CREATE INDEX IndexProductName
    ON Product(ProductName);

	--DESIGN TABLE ORDERITEM
	CREATE TABLE OrderItem
	(
	Id int PRIMARY KEY,
	OrderId int FOREIGN KEY REFERENCES OrderO(Id),
	ProductId int FOREIGN KEY REFERENCES Product(Id),
	UnitPrice decimal(12,2),
	Quantity int
	);

	--Index for OrderIteam table
	CREATE INDEX IndexOrderItemOrderId
    ON OrderItem(OrderItemId);
    CREATE INDEX IndexOrderItemProductId
    ON OrderItem(ProductID);


--2.Insert records in all tables
  
  --Insert records in Customer table
INSERT INTO Customer(Id,FirstName,LastName,City,Country,Phone)Values(1,'Durgesh','jha','Raipur','India','8319107381');
INSERT INTO Customer(Id,FirstName,LastName,City,Country,Phone)Values(2,'Lalita','sahu','pune','srilanka','6260638424');
INSERT INTO Customer(Id,FirstName,LastName,City,Country,Phone)Values(3,'Vaibhav','sinha','bhilai','bangladesh','98765890');
INSERT INTO Customer(Id,FirstName,LastName,City,Country,Phone)Values(4,'Karan','thakur','banglore','India','9876543210');
	
	 --Insert records in OrderO table
INSERT INTO OrderO(Id,OrderDate,OrderNumber,CustomerId,TotalAmount)Values(101,'2022-01-10 10:10:11','1011','1','500.00');
INSERT INTO OrderO(Id,OrderDate,OrderNumber,CustomerId,TotalAmount)Values(102,'2022-01-10 10:20:12','1022','2','800.00');
INSERT INTO OrderO(Id,OrderDate,OrderNumber,CustomerId,TotalAmount)Values(103,'2022-01-10 10:20:12','1033','3','900.00');
INSERT INTO OrderO(Id,OrderDate,OrderNumber,CustomerId,TotalAmount)Values(104,'2022-03-10 02:25:19','1044','4','1200.00');


    --Insert records in Prdouct table
INSERT INTO Product(Id,ProductName,UnitPrice,Package,IsDiscontinued)Values(1001,'Seafood','300.00','Exotic liquids',1);
INSERT INTO Product(Id,ProductName,UnitPrice,Package,IsDiscontinued)Values(1002,'Battery','300.00','Electronics_Limited',0);
INSERT INTO Product(Id,ProductName,UnitPrice,Package,IsDiscontinueD)Values(1003,'Charger','300.00','Electronics_Limited',NULL);
INSERT INTO Product(Id,ProductName,UnitPrice,Package,IsDiscontinued)Values(1004,'Toys','300.00','XTZ','TRUE');


   --Insert records in OrderItem
INSERT INTO OrderItem(Id,OrderId,ProductId,UnitPrice,Quantity)Values(1001,101,1,'300.00',5);
INSERT INTO OrderItem(Id,OrderId,ProductId,UnitPrice,Quantity)Values(1002,102,2,'300.00',7);
INSERT INTO OrderItem(Id,OrderId,ProductId,UnitPrice,Quantity)Values(1003,103,3,'300.00',2);
INSERT INTO OrderItem(Id,OrderId,ProductId,UnitPrice,Quantity)Values(1004,104,4,'300.00',4);


--5. Display all customer tables
SELECT * FROM Customer;


--6.write a query to display country whose name starts with A or I
SELECT * FROM Customer where Country LIKE '[A_I]%';

--7.Write a query to display whose name of customer whose character is i
SELECT * FROM Customer where FirstName LIKE '__i%';

	

	