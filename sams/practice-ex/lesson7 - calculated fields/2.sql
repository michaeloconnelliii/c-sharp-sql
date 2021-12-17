SELECT prod_id, prod_price, ROUND(prod_price * 0.9, 2) AS sale_price
FROM Products