SELECT SalesOrderDetail.ProductID,
       MIN(OrderDate) AS FirstOrder,
       MAX(OrderDate) AS LastOrder
FROM Product 
INNER JOIN SalesOrderDetail
     ON Product.ProductID = SalesOrderDetail.ProductID
INNER JOIN SalesOrderHeader
    ON SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesOrderID
GROUP BY SalesOrderDetail.ProductID
ORDER BY SalesOrderDetail.ProductID;