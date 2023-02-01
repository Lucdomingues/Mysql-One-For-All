SELECT u.usuario usuario, IF(MAX(YEAR(r.data_repro)) >= '2021', 'Usuário ativo', 'Usuário inativo') status_usuario
FROM SpotifyClone.usuario u
INNER JOIN SpotifyClone.reproducao r ON u.usuario_id = r.usuario_id
GROUP BY usuario ORDER BY usuario;