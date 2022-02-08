SELECT Customers.CustomerID, Customers.CompanyName, SUM(UnitPrice * Quantity) - SUM(UnitPrice * Quantity * Discount) AS TotalPriceWithDiscount, SUM(UnitPrice * Quantity) AS TotalOrderAmountWithoutDiscount
FROM Customers INNER JOIN Orders
ON Orders.CustomerID = Customers.CustomerID
INNER JOIN OrderDetails
ON Orders.OrderID = OrderDetails.OrderID
WHERE YEAR(OrderDate) = 2016
GROUP BY Customers.CustomerID, Customers.CompanyName
HAVING SUM(UnitPrice * Quantity) - SUM(UnitPrice * Quantity * Discount) > 15000
ORDER BY TotalOrderAmountWithoutDiscount DESC;