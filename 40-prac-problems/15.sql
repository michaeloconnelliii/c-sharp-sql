SELECT Product.ProductID, 
       OrderDate, 
       ProductName,
       OrderQty,
       SellStartDate, 
       SellEndDate
FROM Product INNER JOIN SalesOrderDetail
                ON Product.ProductID = SalesOrderDetail.ProductID
             INNER JOIN SalesOrderHeader
                ON SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesOrderID
WHERE OrderDate < SellStartDate OR OrderDate > SellEndDate
ORDER BY ProductID;