/* Get next top 5 rows AFTER the first top 5 rows from a column in a table */
SELECT prod_name
FROM Products
ORDER BY prod_name
OFFSET 5 ROWS
FETCH NEXT 5 ROWS ONLY;