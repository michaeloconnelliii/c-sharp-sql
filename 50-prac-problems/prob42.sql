SELECT Employees.EmployeeID, LastName, COUNT(Employees.EmployeeID) AS TotalLateOrders
FROM Orders INNER JOIN Employees 
    ON Orders.EmployeeID = Employees.EmployeeID
WHERE ShippedDate >= RequiredDate
GROUP BY Employees.EmployeeID, LastName
ORDER BY TotalLateOrders DESC;