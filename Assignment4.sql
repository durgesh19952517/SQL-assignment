--Print the Total price of orders which have the products supplied by 'Exotic Liquids' if the price is > 50 and also print it by Shipping company's Name
SELECT SUM(UnitPrice) As TotalPrice,CompanyName FROM Product 
GROUP BY CompanyName
HAVING ProductSupplied ='Exotic Liquids' AND UnitPrice > 50;


--Display the employee details whose joined at first
SELECT TOP 1 * FROM Employee ORDER BY JoiningDate;


--Display the employee details whose joined at recently
SELECT TOP 1 * FROM Employee ORDER BY JoiningDate DESC;


--Write a query to get most expense and least expensive Product list (name and unit price).
SELECT ProductName,UnitPrice FROM Product 
WHERE 
UnitPrice AS MostExpensivePrice=(SELECT MAX(UnitPrice) FROM Product) 
OR 
UnitPrice AS LeastExpensivePrice=(SELECT MIN(UnitPrice) FROM Product);


--Display the list of products that are out of stock
SELECT * FROM Product WHERE Stock='OutofStock';


--Display the list of products whose unitinstock is less than unitonorder
SELECT * FROM Products WHERE Quantity < Orderlist;


--Display list of categories nd suppliers who supply products within those categories



--Display complete list of customers, the OrderID and date of any orders they have made
SELECT FirstName+LastName AS CustomerName FROM Customer
UNION
SELECT OrderId FROM OrderItem
UNION
SELECT OrderDate FROM OrderO;


--Write  query that determines the customer who has placed the maximum number of orders
SELECT CustomerId,MAX(OrderId) FROM OrderO;


--Display the customerid whose name has substring ‘RA’
SELECT * FROM Customer
WHERE
SUBSTRING(LastName, 1,LEN(LastName)) = 'RA';


--Display the first word of all the company name
SELECT SUBSTRING(CompanyName,1,4) as MyFirstWord from Company;