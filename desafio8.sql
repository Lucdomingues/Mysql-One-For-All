SELECT a.artista artista, b.album album
FROM SpotifyClone.artista a
INNER JOIN SpotifyClone.album b ON a.artista_id = b.artista_id
WHERE artista = 'Elis Regina'
ORDER BY album;