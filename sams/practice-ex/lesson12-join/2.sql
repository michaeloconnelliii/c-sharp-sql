/* Lesson 12 - Challenge 2 */
SELECT Customers.cust_name, Orders.order_num, SUM(item_price * quantity)
FROM Customers, Orders, OrderItems
WHERE Customers.cust_id = Orders.cust_id
AND Orders.order_num = OrderItems.order_num
GROUP BY Customers.cust_name, Orders.order_num
ORDER BY Customers.cust_name, Orders.order_num;