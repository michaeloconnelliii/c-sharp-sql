SELECT Orders.OrderID, Orders.OrderDate, Shippers.CompanyName AS Shipper
FROM Orders INNER JOIN Shippers 
ON Orders.ShipVia = Shippers.ShipperID
WHERE Orders.OrderID < 10270
ORDER BY Orders.OrderID;