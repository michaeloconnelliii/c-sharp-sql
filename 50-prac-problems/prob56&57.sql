;WITH AllDates AS (
    SELECT CustomerID,
        OrderDate,
        LEAD(OrderDate, 1)
                OVER(PARTITION BY CustomerID ORDER BY CustomerID, OrderDate) AS NextDate
    FROM Orders
)

SELECT CustomerID, OrderDate, NextDate,
       DATEDIFF(day, OrderDate, NextDate) AS DaysBetweenOrders
FROM AllDates
WHERE DATEDIFF(day, OrderDate, NextDate) <= 5
      AND DATEDIFF(day, OrderDate, NextDate) >= 0
ORDER BY CustomerID;