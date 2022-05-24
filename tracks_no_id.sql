SELECT
    t.Name TrackName,
    m.Name MediaType,
    g.name Genre
FROM Track t 
JOIN MediaType m On t.MediaTypeId = m.MediaTypeId
JOIN Genre g On t.GenreId = g.GenreId;