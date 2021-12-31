/* Lesson 12 - Challenge 1 pt 2 */
SELECT cust_name, order_num
FROM Customers INNER JOIN Orders
ON Customers.cust_id = Orders.cust_id;