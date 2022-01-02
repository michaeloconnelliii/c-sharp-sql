/* Lesson 14 - Challenge 3 */
SELECT prod_name
FROM Products
UNION 
SELECT cust_name
FROM Customers
ORDER BY prod_name;