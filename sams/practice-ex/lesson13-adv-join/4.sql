/* Lesson 13 - Challenge 4 */
SELECT P.prod_name, COUNT(O.order_num) AS total_orders
FROM Products AS P LEFT OUTER JOIN OrderItems AS O
ON P.prod_id = O.prod_id
GROUP BY P.prod_name
ORDER BY P.prod_name;