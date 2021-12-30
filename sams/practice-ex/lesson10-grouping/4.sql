/* Lesson 10 - Challenge 4 */
SELECT order_num, SUM(item_price * quantity) AS total_price
FROM OrderItems
GROUP BY order_num
HAVING SUM(item_price * quantity) >= 1000
ORDER BY order_num;