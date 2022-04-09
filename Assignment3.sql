--write a query to display the orders placed by customer with phone number 030-0074321
UPDATE Customer SET Phone='030-0074321' WHERE Id=3;


--fetching all the products which are available under category 'seafood'
SELECT * FROM Product WHERE Category ='SeaFood';


--display the orders placed by customers not in london
SELECT * FROM Customer WHERE City NOT IN('LONDON');


--selects all the order which are placed for the product chai
SELECT * FROM Product WHERE ProductName ='Chai';


--write a query to display the name, department name and rating of any given employee
SELECT name,DepartmentName,Rating FROM EmployeeTbl;
