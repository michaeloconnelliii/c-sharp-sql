/* Natural Join */
SELECT C.*, O.order_num, O.order_date,
    OI.prod_id, OI.quantity, OI.item_price
FROM Customers AS C, Orders as O,
    OrderItems AS OI
WHERE C.cust_id = O.cust_id
AND OI.order_num = O.order_num
AND prod_id = 'RGAN01';