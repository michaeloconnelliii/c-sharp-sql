/* Unique list of order numbers which contain 100 or more of each item */
SELECT DISTINCT order_num
FROM OrderItems
WHERE quantity >= 100;