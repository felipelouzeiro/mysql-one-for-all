DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON SpotifyClone.usuarios
  FOR EACH ROW
  BEGIN
    DELETE FROM historico_usuario
    WHERE usuario_id = OLD.usuario_id;
    DELETE FROM seguidores_artistas 
    WHERE usuario_id = OLD.usuario_id;
  END $$

DELIMITER ;
