/* Lesson 12 - Challenge 3 */
SELECT Orders.cust_id, Orders.order_date
FROM Orders, OrderItems
WHERE OrderItems.order_num = Orders.order_num
AND OrderItems.prod_id = 'BR01'
ORDER BY Orders.order_date;