SELECT 
    i.InvoiceLineId,
    i.InvoiceId,
    i.UnitPrice,
    i.Quantity,
    t.TrackId,
    t.Name TrackName,
    t.Composer Artist
FROM InvoiceLine i
JOIN Track t On t.TrackId = i.TrackId;