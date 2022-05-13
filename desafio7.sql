CREATE VIEW perfil_artistas AS
  SELECT nm.nome AS 'artista',
    alb.titulo AS 'album',
    COUNT(seg.usuario_id) AS 'seguidores'
  FROM artistas AS nm
  JOIN albuns AS alb ON nm.artista_id = alb.artista_id
  JOIN seguidores_artistas AS seg ON seg.artista_id = nm.artista_id
  GROUP BY alb.album_id
  ORDER BY `seguidores` DESC, `artista`, `album`;
