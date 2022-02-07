SELECT Customers.CustomerID, Customers.CompanyName, Orders.OrderID, SUM(UnitPrice * Quantity) AS TotalOrderAmount
FROM Customers INNER JOIN Orders
ON Orders.CustomerID = Customers.CustomerID
INNER JOIN OrderDetails
ON Orders.OrderID = OrderDetails.OrderID
WHERE YEAR(OrderDate) = 2016
GROUP BY Customers.CustomerID, Customers.CompanyName, Orders.OrderID
HAVING SUM(UnitPrice * Quantity) >= 10000
ORDER BY TotalOrderAmount DESC;