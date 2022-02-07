SELECT TOP(3) ShipCountry, SUM(Freight) / COUNT(ShipCountry) AS AvgFreight
FROM Orders
GROUP BY ShipCountry
ORDER BY AvgFreight DESC;