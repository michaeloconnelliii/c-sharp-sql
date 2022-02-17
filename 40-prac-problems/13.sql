SELECT Product.ProductID,
       ProductSubcategory.ProductSubCategoryName,
       Product.ProductName,
       MIN(OrderDate) AS FirstOrder,
       MAX(OrderDate) AS LastOrder
FROM Product
LEFT OUTER JOIN ProductSubcategory 
      ON Product.ProductSubcategoryID = ProductSubcategory.ProductSubcategoryID
LEFT OUTER JOIN SalesOrderDetail
     ON Product.ProductID = SalesOrderDetail.ProductID
LEFT OUTER JOIN SalesOrderHeader
    ON SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesOrderID
GROUP BY Product.ProductID, Product.ProductName, ProductSubcategory.ProductSubCategoryName
ORDER BY Product.ProductName;