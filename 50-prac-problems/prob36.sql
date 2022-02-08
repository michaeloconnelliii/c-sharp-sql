SELECT TOP(10)
OrderID, COUNT(OrderID) AS TotalLineItems
FROM OrderDetails
GROUP BY OrderID
ORDER BY TotalLineItems DESC;