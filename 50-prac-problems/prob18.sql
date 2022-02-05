SELECT ProductID, ProductName, CompanyName
FROM Products INNER JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID
ORDER BY ProductID;