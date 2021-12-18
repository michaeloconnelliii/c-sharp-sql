SELECT SUM(quantity) as total_items
FROM OrderItems
WHERE prod_id = 'BR01';