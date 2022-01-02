/* Lesson 13 - Challenge 3 */
SELECT P.prod_name, O.order_num
FROM Products AS P LEFT OUTER JOIN OrderItems AS O
ON P.prod_id = O.prod_id
ORDER BY P.prod_name, O.order_num;