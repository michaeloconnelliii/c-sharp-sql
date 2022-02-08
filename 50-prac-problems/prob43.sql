-- Late Orders
;WITH LateOrders AS ( 
        SELECT Employees.EmployeeID, 
               LastName, 
               COUNT(Employees.EmployeeID) AS TotalLateOrders
        FROM Orders INNER JOIN Employees 
            ON Orders.EmployeeID = Employees.EmployeeID
        WHERE ShippedDate >= RequiredDate
        GROUP BY Employees.EmployeeID, LastName
),

-- Total Orders
TotalOrders AS (
        SELECT EmployeeID,
               COUNT(EmployeeID) AS TotalOrders
        FROM Orders
        GROUP BY EmployeeID
)

SELECT LateOrders.EmployeeID,
       LastName,
       TotalOrders,
       TotalLateOrders
FROM LateOrders INNER JOIN TotalOrders
ON LateOrders.EmployeeID = TotalOrders.EmployeeID
ORDER BY EmployeeID;