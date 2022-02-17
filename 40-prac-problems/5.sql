SELECT ProductID,
       StandardCost,
       StartDate,
       EndDate
FROM ProductCostHistory
WHERE '2012-04-15' BETWEEN StartDate AND EndDate;