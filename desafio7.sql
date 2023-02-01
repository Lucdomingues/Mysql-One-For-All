SELECT a.artista artista, b.album album, COUNT(s.usuario_id) seguidores
FROM SpotifyClone.artista a
INNER JOIN SpotifyClone.album b ON a.artista_id = b.artista_id
INNER JOIN SpotifyClone.seguindo_artista s ON a.artista_id = s.artista_id
GROUP BY album, artista ORDER BY seguidores DESC, artista ASC, album ASC;