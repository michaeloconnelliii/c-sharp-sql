;WITH SupplierCountries AS (
    SELECT DISTINCT Country AS SupplierCountry 
    FROM Suppliers
),
CustomerCountries AS (
    SELECT DISTINCT Country AS CustomerCountry 
    FROM Customers
)

SELECT SupplierCountry,
       CustomerCountry
FROM SupplierCountries FULL OUTER JOIN CustomerCountries
     ON SupplierCountries.SupplierCountry = CustomerCountries.CustomerCountry;