/* Lesson 15 - Challenge 2 */
SELECT *
INTO copyOrders
FROM Orders
SELECT *
INTO copyOrderItems
FROM OrderItems;