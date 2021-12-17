/* Get all orders from 2012 using BETWEEN rather than DATEPART */
SELECT order_num
FROM Orders
WHERE order_date BETWEEN CONVERT(date, '01-01-2012')
AND CONVERT(date, '12-31-2012');