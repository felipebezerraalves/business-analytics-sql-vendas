-- Projeto: Business Analytics - Analise de Vendas
-- Etapa 4: Analise de rentabilidade por produto
-- Periodo: janeiro a marco de 2026
-- Lucro bruto calculado com base nos custos unitarios ficticios

SELECT
    produto,
    SUM(quantidade) AS unidades_vendidas,
    SUM(quantidade * preco_unitario) AS faturamento,
    SUM(quantidade * custo_unitario) AS custo_total,
    SUM(quantidade * (preco_unitario - custo_unitario)) AS lucro_bruto,
    ROUND(
        100.0 * SUM(quantidade * (preco_unitario - custo_unitario))
        / SUM(quantidade * preco_unitario),
        2
    ) AS margem_percentual
FROM vendas
GROUP BY produto
ORDER BY lucro_bruto DESC;
