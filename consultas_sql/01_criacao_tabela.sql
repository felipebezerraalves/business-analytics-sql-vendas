-- Projeto: Business Analytics - Analise de Vendas
-- Etapa 1: Criacao da estrutura do banco de dados
-- Banco utilizado: SQLite

CREATE TABLE IF NOT EXISTS vendas (
    id_venda INTEGER PRIMARY KEY,
    data_venda TEXT,
    produto TEXT,
    categoria TEXT,
    quantidade INTEGER,
    preco_unitario REAL,
    custo_unitario REAL
);
