SELECT Customers.CustomerID, Emp.CustomerID
FROM Customers LEFT OUTER JOIN (
    SELECT CustomerID 
    FROM Orders
    WHERE EmployeeID = 4
) AS Emp 
ON Emp.CustomerID = Customers.CustomerID
WHERE Emp.CustomerID IS NULL;