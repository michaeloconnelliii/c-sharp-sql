SELECT ProductID, COUNT(ProductID) AS TotalChanges
FROM ProductCostHistory
GROUP BY ProductID
ORDER BY ProductID;