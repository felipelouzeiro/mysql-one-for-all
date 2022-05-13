CREATE VIEW cancoes_premium AS
  SELECT 
    cns.titulo AS `nome`,
    COUNT (hist.cancao_id) AS `reproducoes`
  FROM SpotifyClone.historico_usuario AS hist
  INNER JOIN
    cancoes AS cns ON hist.cancao_id = cns.cancao_id
  INNER JOIN
    usuarios AS usr ON hist.usuario_id = usr.usuario_id
  INNER JOIN
    planos AS pl ON usr.plano_id = pl.plano_id
  WHERE pl.plano_id IN(2, 3)
  GROUP BY hist.cancao_id
  ORDER BY `nome`;
