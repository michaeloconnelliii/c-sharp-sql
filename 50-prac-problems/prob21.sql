SELECT Country, City, COUNT(City)
FROM Customers
GROUP BY Country, City
ORDER BY Country;