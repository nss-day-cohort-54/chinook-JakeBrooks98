SELECT 
    i.InvoiceLineId,
    i.InvoiceId,
    i.UnitPrice,
    i.Quantity,
    t.TrackId,
    t.Name TrackName
FROM InvoiceLine i
JOIN Track t On t.TrackId = i.TrackId