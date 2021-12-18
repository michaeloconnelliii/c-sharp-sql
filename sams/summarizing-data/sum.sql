/* total number of items */
SELECT SUM(quantity) AS items_ordered
FROM OrderItems
WHERE order_num = 20005;