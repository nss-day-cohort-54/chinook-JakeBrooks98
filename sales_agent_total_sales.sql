SELECT
    SUM(i.Total),
    e.FirstName||' '||e.LastName AS EmployeeFullName
FROM Invoice i 
JOIN Customer c On c.CustomerId = i.CustomerId
JOIN Employee e On e.EmployeeId = c.SupportRepId
GROUP BY c.SupportRepId