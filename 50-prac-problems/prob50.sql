;WITH GroupData AS (
    SELECT Customers.CustomerID, 
        CompanyName, 
        SUM(UnitPrice * Quantity) AS TotalOrderAmount,
        CASE 
                WHEN SUM(UnitPrice * Quantity) BETWEEN 0 AND 1000 THEN 'Low'
                WHEN SUM(UnitPrice * Quantity) BETWEEN 1000 AND 5000 THEN 'Medium'
                WHEN SUM(UnitPrice * Quantity) BETWEEN 5000 AND 10000 THEN 'High'
                WHEN SUM(UnitPrice * Quantity) > 10000 THEN 'Very High'
        END AS CustomerGroup
    FROM Customers INNER JOIN Orders
        ON Customers.CustomerID = Orders.CustomerID
        INNER JOIN OrderDetails
        ON Orders.OrderID = OrderDetails.OrderID
    WHERE YEAR(Orders.OrderDate) = 2016
    GROUP BY Customers.CustomerID, CompanyName
)

SELECT CustomerGroup,
       COUNT(CustomerGroup) AS TotalInGroup,
       CAST(
           CAST(
               COUNT(CustomerGroup) AS float) / 
               CAST(
                   (SELECT COUNT(CustomerGroup) FROM GroupData) AS float) 
        AS float) 
        AS PercentageInGroup
FROM GroupData
GROUP BY CustomerGroup;