SELECT FORMAT(MIN(p.valor_plano), 2) faturamento_minimo,
FORMAT(MAX(p.valor_plano), 2) faturamento_maximo, FORMAT(AVG(p.valor_plano), 2) faturamento_medio,
FORMAT(SUM(p.valor_plano), 2) faturamento_total
FROM SpotifyClone.planos p
INNER JOIN SpotifyClone.usuario u ON p.plano_id = u.plano_id;
