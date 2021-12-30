/* Lesson 10 challenge 1 */
SELECT order_num, COUNT(*) AS num_lines
FROM OrderItems
GROUP BY order_num
ORDER BY num_lines;