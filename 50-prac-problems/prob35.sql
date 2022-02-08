SELECT EmployeeID, OrderID, OrderDate
FROM Orders
WHERE CAST(OrderDate as date) = EOMONTH(OrderDate)
ORDER BY EmployeeID, OrderID;