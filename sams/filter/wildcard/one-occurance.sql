/* Match all product names that start with 'Fish' */
SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE 'Fish%';