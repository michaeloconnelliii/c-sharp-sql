SELECT TOP(3) ShipCountry, SUM(Freight) / COUNT(ShipCountry) AS AvgFreight
FROM Orders
WHERE YEAR(OrderDate) = 2015
GROUP BY ShipCountry
ORDER BY AvgFreight DESC;