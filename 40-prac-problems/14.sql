;WITH LatestProducts AS (
    SELECT ListPrice,
           ProductID
    FROM ProductListPriceHistory 
    WHERE EndDate IS NULL 
)

SELECT Product.ProductID, 
       ProductName, 
       Product.ListPrice AS Prod_ListPrice, 
       LatestProducts.ListPrice AS ProdHistoryLatest_ListPrice,
       ABS(Product.ListPrice - LatestProducts.ListPrice) AS Diff
FROM Product INNER JOIN LatestProducts
    ON LatestProducts.ProductID = Product.ProductID
WHERE Product.ListPrice <> LatestProducts.ListPrice;