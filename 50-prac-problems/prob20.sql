SELECT Categories.CategoryName, COUNT(Products.CategoryID) AS TotalProducts
FROM Categories INNER JOIN Products 
ON Categories.CategoryID = Products.CategoryID
GROUP BY Categories.CategoryName
ORDER BY TotalProducts DESC;