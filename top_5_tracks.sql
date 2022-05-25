SELECT
    t.Name TrackName,
    COUNT(il.TrackId) Track
FROM Track t 
JOIN InvoiceLine il On il.TrackId = t.TrackId
JOIN Invoice i On il.InvoiceId = i.InvoiceId
GROUP BY il.TrackId
ORDER BY Track DESC
LIMIT 5