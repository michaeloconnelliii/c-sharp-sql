SELECT Employees.EmployeeID, LastName, Orders.OrderID, ProductName, Quantity
FROM Orders INNER JOIN Employees ON
            Orders.EmployeeID = Employees.EmployeeID
            INNER JOIN OrderDetails ON
            Orders.OrderID = OrderDetails.OrderID
            INNER JOIN Customers ON
            Orders.CustomerID = Customers.CustomerID
            INNER JOIN Products ON
            OrderDetails.ProductID = Products.ProductID
ORDER BY OrderID, Products.ProductID;