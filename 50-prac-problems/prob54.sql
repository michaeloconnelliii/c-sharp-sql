;WITH SupplierCountries AS (
    SELECT Country AS SupplierCountry,
           COUNT(Country) AS TotalSuppliers
    FROM Suppliers
    GROUP BY Country
),
CustomerCountries AS (
    SELECT Country AS CustomerCountry,
           COUNT(Country) AS TotalCustomers
    FROM Customers
    GROUP BY Country
)

SELECT ISNULL(SupplierCountry,CustomerCountry) AS Country,
       ISNULL(TotalSuppliers, 0) AS TotalSuppliers,
       ISNULL(TotalCustomers, 0) AS TotalCustomers
FROM SupplierCountries FULL OUTER JOIN CustomerCountries
ON SupplierCountries.SupplierCountry = CustomerCountries.CustomerCountry;