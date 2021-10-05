CREATE VIEW historico_reproducao_usuarios AS
  SELECT 
  usr.nome AS usuario,
  cns.titulo AS nome

  FROM SpotifyClone.usuarios as usr
  INNER JOIN
    SpotifyClone.historico_usuario as hist ON usr.usuario_id = hist.usuario_id
  INNER JOIN
    SpotifyClone.cancoes as cns ON cns.cancao_id = hist.cancao_id
  ORDER BY usuario, nome;