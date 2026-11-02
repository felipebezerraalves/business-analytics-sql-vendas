
-- Projeto: Business Analytics - Analise de Vendas
-- Etapa 3: Analise de faturamento por produto
-- Periodo: janeiro a marco de 2026

SELECT
    produto,
    SUM(quantidade) AS unidades_vendidas,
    SUM(quantidade * preco_unitario) AS faturamento
FROM vendas
GROUP BY produto
ORDER BY faturamento DESC;
