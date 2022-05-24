SELECT
    i.InvoiceId,
    e.EmployeeId,
    e.FirstName,
    e.LastName,
    c.SupportRepId,
    e.FirstName||' '||e.LastName AS FullName
FROM Invoice i
Join Customer c On c.CustomerId = i.CustomerId
Join Employee e On e.EmployeeId = c.SupportRepId