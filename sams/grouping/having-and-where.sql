/* Return the vend_id's with 2 or more products that
   are priced 4 dollars or above */
SELECT vend_id, COUNT(*) AS num_prods
FROM Products
WHERE prod_price >= 4
GROUP BY vend_id
HAVING COUNT(*) >= 2;