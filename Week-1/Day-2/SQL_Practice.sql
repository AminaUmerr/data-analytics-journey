--From Students Table 
1. Show all students who are 21 years old.
select * 
from students
where age = 21;

2. Show students who are older than 20 AND belong to the CS department.
select * 
from students
where age > 20 AND Department = 'CS';

3.Show students whose age is 20 OR 23
select * 
from students
where age = 21 OR age = 23;

4.Show students NOT in the SE department
select * 
from students
where Department != 'SE';

5.Show students whose age is BETWEEN 20 AND 22.
select * 
from students
where age between 20 and 22;

6.Show students whose department is CS or AI.
select * 
from students
where department = 'CS' OR department = 'AI';

7.Show students whose name starts with A.
SELECT *
FROM Students
WHERE Name LIKE 'A%';

8.Show students whose name ends with a.
SELECT *
FROM Students
WHERE Name LIKE '%a';

9.Show students whose name contains a.
SELECT *
FROM Students
WHERE Name LIKE '%a%';

10. Show only the unique departments.
SELECT DISTINCT department
from students;



-------------------------------------------------------------------------

-- Create Products table

CREATE TABLE Products
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(30),
    Price DECIMAL(10,2),
    Quantity INT
);

-- Insert data

INSERT INTO Products
VALUES
(1,'Laptop','Electronics',85000,5),
(2,'Mouse','Electronics',1500,30),
(3,'Keyboard','Electronics',2500,20),
(4,'Chair','Furniture',12000,10),
(5,'Desk','Furniture',18000,8),
(6,'Notebook','Stationery',250,100),
(7,'Pen','Stationery',80,300),
(8,'Monitor','Electronics',35000,12);

--Quiries:
11. How many products are in the database?
SELECT count(productname) as total_products
FROM Products;

12.What is the average product price?
SELECT AVG(price) as AverageProductPrice
FROM Products;

13. What is the most expensive product?
SELECT TOP 1 ProductName, Price
FROM Products
ORDER BY Price DESC;

14. what is the most cheapest product?
SELECT TOP 1 ProductName, Price
FROM Products
ORDER BY Price asc;

15.What is the total value of all product prices?
SELECT sum(Price) as TotalProductPrices
FROM Products;

16.How many products are there in each category?
SELECT Category, count(*) as TotalProducts
FROM Products
group by Category;

17.What is the average price of products in each category?
SELECT Category, avg(Price) as AveragePrice
FROM Products
group by Category;

18.Which category has the highest average price?
SELECT Top 1 Category, avg(Price) as HighestAveragePrice
FROM Products
group by Category
order by avg(Price) desc;

19.What is the total quantity of products in each category?
SELECT Category, SUM(Quantity) AS TotalQuantity
FROM Products
GROUP BY Category;





