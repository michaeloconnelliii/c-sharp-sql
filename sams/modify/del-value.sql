/* Delete a column's value */
UPDATE Customers
SET cust_email = NULL
WHERE cust_id = '1000000005';