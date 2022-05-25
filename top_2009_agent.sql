SELECT MAX(Total),
 EmployeeFullName
 FROM (

SELECT
    SUM(i.Total) Total, 
    e.FirstName||' '||e.LastName AS EmployeeFullName
FROM Invoice i 
JOIN Customer c On c.CustomerId = i.CustomerId
JOIN Employee e On e.EmployeeId = c.SupportRepId
WHERE i.InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31'
GROUP BY c.SupportRepId);