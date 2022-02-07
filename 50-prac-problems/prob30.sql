SELECT Customers.CustomerID, Orders.CustomerID
FROM Customers LEFT OUTER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.CustomerID IS NULL;