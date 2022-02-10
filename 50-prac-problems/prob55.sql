-- We first order on the earliest date
;WITH MinOrderDates AS (
    SELECT MIN(OrderID) AS OrderID, MIN(OrderDate) AS MinDates
    FROM Orders
    GROUP BY ShipCountry
)

SELECT ShipCountry, CustomerID, OrderID, OrderDate
FROM Orders
WHERE OrderID IN (SELECT OrderID FROM MinOrderDates)
ORDER BY ShipCountry;