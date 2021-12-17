/* String concatenation with trimming whitespace */
SELECT CONCAT(RTRIM(vend_name), ' ', RTRIM(vend_country))
FROM Vendors;