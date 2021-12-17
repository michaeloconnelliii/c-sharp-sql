/* Multiply quantity and item price to get expanded price column */
SELECT prod_id, quantity, item_price,
       quantity * item_price AS expanded_price
FROM OrderItems
WHERE order_num = 20008;