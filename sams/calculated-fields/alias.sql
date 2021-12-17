/* String concatenation and creating an alias for column name */
SELECT CONCAT(RTRIM(vend_name), ' ', RTRIM(vend_country)) AS vend_title
FROM Vendors;