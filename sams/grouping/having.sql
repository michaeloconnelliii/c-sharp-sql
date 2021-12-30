/* For each unique customer ID, return the customer IDs
   that contains 2 or more orders and display both their
   customer id and number of orders in the table */
SELECT cust_id, COUNT(*) AS orders
FROM Orders
GROUP BY cust_id
HAVING COUNT(*) >= 2;