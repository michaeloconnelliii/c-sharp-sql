SELECT ContactTitle, COUNT(ContactTitle) AS totalContactTitle
FROM Customers
GROUP BY ContactTitle;