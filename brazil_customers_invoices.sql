SELECT
  c.FirstName||' '||c.LastName AS FullName,
  c.CustomerId,
  c.country,
  i.id InvoiceId,
  i.InvoiceDate,
  i.BillingCountry
FROM Customer c
WHERE c.Country = 'Brazil'
JOIN Invoice i ON i.CustomerId = c.CustomerId;