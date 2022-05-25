SELECT MAX(Track),
 TrackName
FROM (
SELECT
    t.Name TrackName,
    COUNT(il.TrackId) Track
FROM Track t 
JOIN InvoiceLine il On il.TrackId = t.TrackId
JOIN Invoice i On il.InvoiceId = i.InvoiceId
WHERE i.InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31'
GROUP BY il.TrackId)