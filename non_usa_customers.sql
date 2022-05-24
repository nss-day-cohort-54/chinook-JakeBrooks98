SELECT
  c.FirstName,
  c.LastName,
  c.FirstName||' '||c.LastName AS FullName,
  c.CustomerId,
  c.country
FROM Customer c
WHERE c.Country != 'USA';
