SELECT u.usuario usuario, COUNT(r.cancao_id) qt_de_musicas_ouvidas, ROUND(SUM(r.duracao) / 60, 2) total_minutos
FROM SpotifyClone.usuario u
INNER JOIN SpotifyClone.reproducao r ON u.usuario_id = r.usuario_id
GROUP BY usuario ORDER BY usuario;