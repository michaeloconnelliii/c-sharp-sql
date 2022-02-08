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
        SELECT Orders.EmployeeID,
               LastName,
               COUNT(Orders.EmployeeID) AS TotalOrders
        FROM Orders INNER JOIN Employees
            ON Orders.EmployeeID = Employees.EmployeeID 
        GROUP BY Orders.EmployeeID, Employees.LastName
)

SELECT TotalOrders.EmployeeID,
       TotalOrders.LastName,
       TotalOrders,
       ISNULL(TotalLateOrders, 0)
FROM TotalOrders LEFT OUTER JOIN LateOrders
ON LateOrders.EmployeeID = TotalOrders.EmployeeID
ORDER BY EmployeeID;