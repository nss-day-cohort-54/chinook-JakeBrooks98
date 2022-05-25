SELECT 
    e.FirstName||' '||e.LastName AS EmployeeFullName,
    COUNT(c.CustomerId)
FROM Employee e
JOIN Customer c On c.SupportRepId = e.EmployeeId
GROUP BY c.SupportRepId