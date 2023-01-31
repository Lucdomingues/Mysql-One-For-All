SELECT COUNT(c.cancoes) cancoes, COUNT(DISTINCT a.artista) artistas, COUNT(DISTINCT b.album) albuns
FROM SpotifyClone.cancoes c
INNER JOIN SpotifyClone.album b ON c.album_id = b.album_id
INNER JOIN SpotifyClone.artista a ON b.artista_id = a.artista_id;