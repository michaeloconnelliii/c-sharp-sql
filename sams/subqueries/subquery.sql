/* Use the output from our subquery as input for
   the outer query */
SELECT cust_id
FROM Orders
WHERE order_num IN (SELECT order_num
        FROM OrderItems
        WHERE prod_id = 'RGAN01');