/* Total order amt */
SELECT SUM(item_price * quantity) AS total_price
FROM OrderItems
WHERE order_num = 20005;