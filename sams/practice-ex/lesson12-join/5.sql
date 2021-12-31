/* Lesson 12 - Challenge 5 */
SELECT Customers.cust_name, SUM(OrderItems.item_price * OrderItems.quantity) AS total_price
FROM OrderItems, Orders, Customers
WHERE OrderItems.order_num = Orders.order_num
AND Orders.cust_id = Customers.cust_id
GROUP BY Customers.cust_name HAVING SUM(OrderItems.item_price * OrderItems.quantity) >= 1000
ORDER BY Customers.cust_name;