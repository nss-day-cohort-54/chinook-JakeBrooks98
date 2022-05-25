SELECT
    a.Name ArtistName,
    COUNT(il.TrackId) Plays
FROM Artist a 
JOIN Album al On al.ArtistId = a.ArtistId
JOIN Track t On t.AlbumId = al.AlbumId
JOIN InvoiceLine il On il.TrackId = t.TrackId
GROUP BY a.ArtistId
ORDER BY Plays DESC
LIMIT 3