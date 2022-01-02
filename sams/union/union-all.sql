/* Union All Example */
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_state IN('IL', 'IN', 'MI')
UNION ALL
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_name = 'Fun4All';