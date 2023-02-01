SELECT c.cancoes cancao, COUNT(r.usuario_id) reproducoes
FROM SpotifyClone.cancoes c
INNER JOIN SpotifyClone.reproducao r ON c.cancao_id = r.cancao_id
GROUP BY cancao ORDER BY reproducoes DESC, cancao ASC LIMIT 2;