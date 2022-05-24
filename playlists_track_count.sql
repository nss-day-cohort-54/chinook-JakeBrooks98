SELECT
    p.Name,
    COUNT(*)
FROM PlaylistTrack pt
JOIN Playlist p On p.PlaylistId = pt.PlayListId
GROUP BY pt.PlaylistId