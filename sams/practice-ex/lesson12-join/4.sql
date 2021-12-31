/* Lesson 12 - Challenge 4 */
SELECT cust_email
FROM Customers 
INNER JOIN Orders ON Customers.cust_id = Orders.cust_id
INNER JOIN OrderItems ON Orders.order_num = OrderItems.order_num
WHERE OrderItems.prod_id = 'BR01';