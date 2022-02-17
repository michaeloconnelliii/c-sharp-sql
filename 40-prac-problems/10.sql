SELECT Product.ProductID,
       ProductName
FROM Product LEFT OUTER JOIN ProductListPriceHistory
     ON Product.ProductID = ProductListPriceHistory.ProductID
WHERE ProductListPriceHistory.ProductID IS NULL;