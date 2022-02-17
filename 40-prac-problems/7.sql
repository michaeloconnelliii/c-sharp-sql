SELECT FORMAT(StartDate, 'yyyy/MM') AS ProductListPriceMonth,
       COUNT(StartDate) AS TotalRows
FROM ProductListPriceHistory
GROUP BY FORMAT(StartDate, 'yyyy/MM');