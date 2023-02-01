SELECT c.cancoes nome, COUNT(r.usuario_id) reproducoes
FROM SpotifyClone.reproducao r
INNER JOIN SpotifyClone.cancoes c ON r.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.usuario u ON r.usuario_id = u.usuario_id
WHERE u.plano_id IN (1, 4)
GROUP BY nome ORDER BY nome;