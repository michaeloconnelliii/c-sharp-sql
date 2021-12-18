/* Multiple aggregate functions */
SELECT COUNT(*) AS num_items,
   MIN(prod_price) AS price_min,
   MAX(prod_price) AS price_max,
   AVG(prod_price) AS price_avg
FROM Products;