/* Lesson 13 - Challenge 1 */
SELECT C.cust_name, O.order_num
FROM Customers AS C 
INNER JOIN Orders AS O ON C.cust_id = O.cust_id
ORDER BY cust_name;