SELECT order_num, order_date
FROM Orders
WHERE DATEPART(yy, order_date) = 2012 AND DATEPART(mm, order_date) = 1
ORDER BY order_date;