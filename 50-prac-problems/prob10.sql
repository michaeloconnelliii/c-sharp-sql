SELECT FirstName, LastName, Title, CONVERT(date ,BirthDate)
FROM Employees
ORDER BY BirthDate;