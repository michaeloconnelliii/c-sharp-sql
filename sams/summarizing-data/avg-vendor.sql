/* Average price of a specific vendor */
SELECT AVG(prod_price) AS avg_price
FROM Products
WHERE vend_id='DLL01';