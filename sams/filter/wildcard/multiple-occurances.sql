/* Find all occurances with the phrase 'bean bag' in the product name */
SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE '%bean bag%';