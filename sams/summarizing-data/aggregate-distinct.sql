/* Aggregate on distinct values, only take into account unique prices for the avg */
SELECT AVG(DISTINCT prod_price) AS avg_price
FROM Products
WHERE vend_id='DLL01';