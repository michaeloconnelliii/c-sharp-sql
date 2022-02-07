SELECT CustomerID, CompanyName, Region
FROM Customers
ORDER BY 
CASE WHEN Region IS NULL THEN 0
    ELSE 1 END DESC, 
    Region;