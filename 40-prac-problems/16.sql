SELECT Product.ProductID, 
       OrderDate, 
       ProductName,
       OrderQty,
       SellStartDate, 
       SellEndDate,
       CASE 
            WHEN OrderDate > SellEndDate THEN 'After'
            WHEN OrderDate < SellStartDate THEN 'Before'
       END

FROM Product INNER JOIN SalesOrderDetail
                ON Product.ProductID = SalesOrderDetail.ProductID
             INNER JOIN SalesOrderHeader
                ON SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesOrderID
WHERE OrderDate < SellStartDate OR OrderDate > SellEndDate
ORDER BY ProductID;