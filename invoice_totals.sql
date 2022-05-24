SELECT
    i.InvoiceId,
    i.Total,
    e.FirstName||' '||e.LastName AS SalesAgentFullName,
    c.FirstName||' '||c.LastName As CustomerFullName,
    c.Country
FROM Invoice i
Join Customer c On c.CustomerId = i.CustomerId
Join Employee e On e.EmployeeId = c.SupportRepId