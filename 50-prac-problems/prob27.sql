/* The issue without casting is that its interpeted as beginning of 20150101 (12 am) 
   to the beginning of 20151231 (12 am), so orders that occur after 12am on the end date
   aren't used.  */
SELECT TOP(3)
    ShipCountry, AvgFreight = AVG(Freight)
FROM Orders
WHERE CAST(OrderDate AS date) BETWEEN  '20150101' AND + '20151231'
GROUP BY ShipCountry
ORDER BY AvgFreight DESC;