SELECT
    i.InvoiceId,
    COUNT(*)
FROM InvoiceLine i
GROUP BY i.InvoiceId;