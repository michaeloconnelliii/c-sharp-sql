/* Sort by customer id and then by order date in reverse chronological order */
SELECT cust_id, order_num, order_date
FROM Orders
ORDER BY cust_id, order_date DESC;