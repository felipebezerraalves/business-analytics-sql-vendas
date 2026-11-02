-- Projeto: Analise de vendas e estoque
-- Objetivo: Calcular o ponto de reposicao de Mouse
-- Prazo de entrega: 60 dias (aproximadamente 2 meses)
-- Estoque de seguranca: 5 unidades

SELECT
    produto,
    SUM(quantidade) AS total_vendido,
    ROUND(SUM(quantidade) / 3.0, 2) AS media_mensal,
    60 AS prazo_entrega_dias,
    5 AS estoque_seguranca,
    CEIL(((SUM(quantidade) / 3.0) * 2) + 5) AS ponto_reposicao
FROM vendas
WHERE produto = 'Mouse'
GROUP BY produto;
