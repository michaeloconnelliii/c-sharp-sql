SELECT ProductID,
       ListPrice
FROM ProductListPriceHistory
WHERE EndDate IS NULL;