SELECT CalendarMonth,
       COUNT(StartDate) AS TotalRows
FROM ProductListPriceHistory RIGHT OUTER JOIN Calendar
     ON ProductListPriceHistory.StartDate = Calendar.CalendarDate
WHERE CalendarDate BETWEEN (SELECT MIN(StartDate) FROM ProductListPriceHistory) AND (SELECT MAX(StartDate) FROM ProductListPriceHistory)
GROUP BY CalendarMonth
ORDER BY CalendarMonth;