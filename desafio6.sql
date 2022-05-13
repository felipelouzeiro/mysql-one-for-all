CREATE VIEW faturamento_atual AS
  SELECT 
    MIN(pl.valor) AS 'faturamento_minimo', 
    MAX(pl.valor) AS 'faturamento_maximo',
    ROUND(AVG(pl.valor), 2) AS 'faturamento_medio',
    SUM(pl.valor) AS 'faturamento_total'
  FROM planos AS pl
  JOIN usuarios AS usr ON usr.plano_id = pl.plano_id;
