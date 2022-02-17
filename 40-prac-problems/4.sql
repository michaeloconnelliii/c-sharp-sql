SELECT SalesOrderDetail.ProductID,
       Product.ProductName,
       MIN(OrderDate) AS FirstOrder,
       MAX(OrderDate) AS LastOrder
FROM Product 
INNER JOIN SalesOrderDetail
     ON Product.ProductID = SalesOrderDetail.ProductID
INNER JOIN SalesOrderHeader
    ON SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesOrderID
GROUP BY SalesOrderDetail.ProductID, Product.ProductName
ORDER BY SalesOrderDetail.ProductID;