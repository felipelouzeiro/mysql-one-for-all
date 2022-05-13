CREATE VIEW top_2_hits_do_momento AS
  SELECT 
    cns.titulo AS cancao, 
    COUNT(hist.cancao_id) AS reproducoes
  FROM
    SpotifyClone.cancoes AS cns
  INNER JOIN
    SpotifyClone.historico_usuario AS hist ON cns.cancao_id = hist.cancao_id
  GROUP BY cancao
  ORDER BY reproducoes DESC, cancao ASC
  LIMIT 2;
