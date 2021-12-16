/* Sort by highest quantity and price (in that order) */
SELECT quantity, item_price
FROM OrderItems
ORDER BY quantity DESC, item_price DESC;