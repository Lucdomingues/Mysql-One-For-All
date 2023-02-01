SELECT COUNT(r.usuario_id) quantidade_musicas_no_historico
FROM SpotifyClone.reproducao r
INNER JOIN SpotifyClone.usuario u ON r.usuario_id = u.usuario_id
WHERE usuario = 'Barbara Liskov';