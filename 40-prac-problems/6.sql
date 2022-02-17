SELECT ProductID,
       StandardCost,
       StartDate,
       EndDate
FROM ProductCostHistory
WHERE '2014-04-15' >= StartDate 
       AND EndDate IS NULL;