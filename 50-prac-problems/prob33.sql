SELECT Customers.CustomerID, Customers.CompanyName, SUM(UnitPrice * Quantity) AS TotalOrderAmount
FROM Customers INNER JOIN Orders
ON Orders.CustomerID = Customers.CustomerID
INNER JOIN OrderDetails
ON Orders.OrderID = OrderDetails.OrderID
WHERE YEAR(OrderDate) = 2016
GROUP BY Customers.CustomerID, Customers.CompanyName
HAVING SUM(UnitPrice * Quantity) > 15000
ORDER BY TotalOrderAmount DESC;