
-- Projeto: Analise de vendas
-- Indicador: Cobertura de estoque de Mouse

SELECT
    produto,
    SUM(quantidade) AS total_vendido,
    ROUND(SUM(quantidade) / 3.0, 2) AS media_mensal,
    ROUND(30.0 / (SUM(quantidade) / 3.0), 2) AS cobertura_meses
FROM vendas
WHERE produto = 'Mouse'
GROUP BY produto;
