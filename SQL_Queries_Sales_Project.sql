-- Query 1: Show all customers
SELECT * FROM Customers;

-- Query 2: Show all orders
SELECT * FROM Orders;

-- Query 3: Join Customers and Orders
SELECT
    o.OrderID,
    o.OrderDate,
    c.FirstName,
    c.LastName,
    o.Amount
FROM
    Orders o
JOIN
    Customers c
ON
    o.CustomerID = c.CustomerID;

-- Query 4: Aggregate - Total Sales by City
SELECT
    c.City,
    SUM(o.Amount) AS TotalSales
FROM
    Orders o
JOIN
    Customers c
ON
    o.CustomerID = c.CustomerID
GROUP BY
    c.City;

-- Query 5: Filtering - Cities with sales above 3000
SELECT
    c.City,
    SUM(o.Amount) AS TotalSales
FROM
    Orders o
JOIN
    Customers c
ON
    o.CustomerID = c.CustomerID
GROUP BY
    c.City
HAVING
    SUM(o.Amount) > 3000;
