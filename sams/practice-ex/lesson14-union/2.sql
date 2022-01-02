/* Lesson 14 - Challenge 2 */
SELECT prod_id, quantity
FROM OrderItems
WHERE quantity = 100
OR prod_id LIKE 'BNBG%'
ORDER BY prod_id;