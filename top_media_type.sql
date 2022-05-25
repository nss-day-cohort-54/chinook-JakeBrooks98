SELECT
    mt.Name MediaTrackName,
    COUNT(t.MediaTypeId) MediaType
FROM MediaType mt 
JOIN Track t On t.MediaTypeId = mt.MediaTypeId
ORDER BY MediaType DESC
LIMIT 1