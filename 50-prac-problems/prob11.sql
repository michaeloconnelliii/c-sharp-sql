SELECT FirstName, LastName, CONCAT(FirstName, ' ', LastName) AS FullName
FROM Employees
ORDER BY BirthDate;