SELECT ProductListPriceHistory.ProductID
FROM ProductListPriceHistory LEFT OUTER JOIN 
    (Select
        ProductID
        ,StandardCost
    From ProductCostHistory
    Where
    '2014-04-15' Between StartDate and IsNull(EndDate, getdate())) AS TempTable
    ON ProductListPriceHistory.ProductID = TempTable.ProductID
WHERE TempTable.ProductID IS NULL
GROUP BY ProductListPriceHistory.ProductID;