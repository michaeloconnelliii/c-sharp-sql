/* Lesson 11 - Challenge 4 */
SELECT cust_id, 
        (SELECT SUM(quantity * order_num) 
         FROM OrderItems
         WHERE OrderItems.order_num = Orders.order_num) AS total_amount
FROM Orders
ORDER BY total_amount DESC;