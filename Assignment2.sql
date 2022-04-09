
UPDATE Customer SET Country='Germany' WHERE Id=4;

--Display the details from customer table who is from country germany
SELECT * FROM Customer WHERE Country ='Germany';

--Display the full name of the employee
SELECT (FirstName +LastName) AS Employee from Customer; 

--Display the customer details who has fax number
ALTER TABLE Customer ADD FaxNumber varchar(30);
UPDATE Customer SET FaxNumber=NULL WHERE Id=1;
UPDATE Customer SET FaxNumber='1000080' WHERE Id=2;
UPDATE Customer SET FaxNumber='1000789' WHERE Id=3;
UPDATE Customer SET FaxNumber='1000678' WHERE Id=4;

SELECT * FROM Customer WHERE FaxNumber IS NOT NULL;


--Display the customer details who name holds second letter as U
SELECT * FROM Customer where FirstName LIKE '_U%';

--Select order details where unit price is greater than 10 and less than 20
SELECT * FROM OrderItem where UnitPrice > 10 AND UnitPrice < 20;

--Display Order details which contains shipping price and arrange the order by date
SELECT Id,OrderDate,OrderNumber,CustomerId,TotalAmount AS Shipping_Price FROM OrderO ORDER BY OrderDate; 

--print the orders shipped by ship name 'La corned'abondance' between 2 dates (choose date of your choice)
UPDATE Customer SET FirstName='La corned' WHERE Id=3;
UPDATE Customer SET LastName='abondance' WHERE Id=3;
SELECT FirstName+LastName AS ShipName FROM OrderO WHERE ShipName =''La corned abondance' AND'OrderDate BETWEEN '2022-01-02' AND '2022-02-05';



--print the products supplied by 'Exotic liquids'



--print the average quantity ordered for every product
SELECT AVG(Quantity) FROM OrderItem GROUP BY ProductId;

--Print all the shipping company name and the ship names if they are operational
SELECT * FROM Product WHERE Package ='Exotic liquids'

--print all employees with manager name



--print the bill for a given order id .bill should contain ProductName, Categoryname,price after discount
SELECT OrderId,ProductName,Category,Discount FROM Product AS P
INNER JOIN 
OrderItem AS OT ON P.ProductId=OT.ProductId;


--priNt the total price of orders which have the products supplied by 'exotic liquids' if the price is> 50 and also print it by shipping company's name
