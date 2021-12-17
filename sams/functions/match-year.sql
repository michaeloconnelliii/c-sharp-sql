/* Return all order nums from 2012 */
SELECT order_num, order_date
FROM Orders
WHERE DATEPART(yy, order_date) = 2012;