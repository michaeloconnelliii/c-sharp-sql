/* Note that != and <> can usually be used interchangably in DBMS that support both operators */
SELECT vend_id, prod_name
FROM Products
WHERE vend_id <> 'DLL01'