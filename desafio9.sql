DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(150))
  BEGIN
    SELECT 
      art.nome AS artista,
      alb.titulo AS album 
    FROM SpotifyClone.albuns AS alb
    INNER JOIN 
      SpotifyClone.artistas AS art ON alb.artista_id = art.artista_id
    WHERE art.nome = artista;
  END $$

DELIMITER ;
