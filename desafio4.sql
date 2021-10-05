CREATE VIEW top_3_artistas AS
  SELECT 
  art.nome AS artista, 
  COUNT(seg.artista_id) AS seguidores
  FROM
    SpotifyClone.artistas AS art
  INNER JOIN
    SpotifyClone.seguidores_artistas AS seg ON seg.artista_id = art.artista_id
  GROUP BY artista
  ORDER BY seguidores DESC, artista
  LIMIT 3;