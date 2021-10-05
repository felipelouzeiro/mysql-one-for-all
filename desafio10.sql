DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario_cod INT)
  RETURNS INT READS SQL DATA
  BEGIN
    DECLARE amount_historic INT;
    SELECT
      COUNT(*)
    FROM
      SpotifyClone.historico_usuario
    WHERE usuario_id = usuario_cod
    INTO amount_historic;
    RETURN amount_historic;
END $$

DELIMITER ;
