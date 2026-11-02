# Análise de Vendas e Estoque com SQL

## Sobre o projeto

Este projeto apresenta uma análise exploratória de vendas de uma empresa fictícia do setor de informática e acessórios, utilizando SQL e SQLite.

O objetivo é transformar registros de vendas em informações que possam apoiar decisões comerciais, financeiras e de gestão de estoque.

A base contém 10 transações fictícias realizadas entre janeiro e março de 2026.

## Objetivos

- Identificar os produtos com maior faturamento.
- Comparar volume de vendas, lucro bruto e margem bruta.
- Analisar a demanda mensal por produto.
- Estimar a cobertura de estoque.
- Calcular um ponto de reposição com base na demanda histórica.
- Desenvolver recomendações a partir dos indicadores encontrados.

## Ferramentas utilizadas

- **SQLite:** banco de dados relacional.
- **DBeaver:** execução e validação das consultas SQL.
- **GitHub:** organização e documentação do projeto.

## Estrutura do projeto

Os arquivos SQL estão organizados na pasta `consultas_sql`:

| Arquivo | Descrição |
|---|---|
| `01_criacao_tabela.sql` | Criação da tabela de vendas |
| `02_insercao_dados.sql` | Inserção dos dados fictícios |
| `03_faturamento.sql` | Faturamento e unidades vendidas por produto |
| `04_rentabilidade.sql` | Custos, lucro bruto e margem bruta |
| `05_demanda_estoque.sql` | Análise de demanda e cobertura de estoque |
| `06_reposicao_estoque.sql` | Cálculo do ponto de reposição |

Para reproduzir o projeto, crie um banco SQLite vazio e execute os arquivos `01` e `02`, nessa ordem. Depois, execute as consultas analíticas.

## Principais resultados

| Produto | Faturamento | Lucro bruto | Margem bruta |
|---|---:|---:|---:|
| Notebook | R$ 17.500 | R$ 2.500 | 14,29% |
| Monitor | R$ 6.000 | R$ 1.750 | 29,17% |
| Mouse | R$ 1.520 | R$ 1.045 | 68,75% |
| Teclado | R$ 1.050 | R$ 420 | 40,00% |

### Faturamento e rentabilidade

O Notebook apresentou o maior faturamento e lucro bruto total no período analisado.

O Mouse, por outro lado, apresentou a maior margem bruta percentual e o maior volume de unidades vendidas.

Esses resultados mostram que faturamento, lucro bruto e margem são indicadores diferentes e precisam ser avaliados em conjunto.

### Demanda e estoque

O Mouse registrou vendas de 5 unidades em janeiro, 8 em fevereiro e 6 em março.

Sua demanda média foi de aproximadamente 6,33 unidades por mês.

Em um cenário hipotético com estoque de 30 unidades, a cobertura estimada seria de 4,74 meses.

Considerando um prazo de reposição de 60 dias e um estoque de segurança de 5 unidades, o ponto de reposição calculado foi de 18 unidades.

## Recomendações de negócio

Em um cenário com R$ 5.000 disponíveis para compras de estoque, a decisão não deve considerar apenas a margem de lucro dos produtos.

Embora o Mouse apresente margem elevada, sua demanda histórica não justificaria uma compra excessiva sem avaliar o estoque disponível.

O Notebook apresenta maior lucro bruto por unidade, mas exige um investimento inicial significativamente maior.

A recomendação é avaliar a necessidade de reposição de cada produto, considerar o histórico de vendas e evitar comprometer todo o orçamento sem demanda identificada.

## Limitações da análise

- A base contém apenas 10 transações fictícias.
- O período analisado é de três meses.
- Os custos unitários são hipotéticos.
- O lucro bruto não considera despesas operacionais, tributos ou outros custos.
- Os cenários de estoque, prazo de entrega e estoque de segurança utilizam premissas simuladas.
- As recomendações são exploratórias e não representam previsões de demanda.

## Conclusão

O projeto demonstra como consultas SQL podem ser utilizadas para transformar dados de vendas em indicadores e recomendações de negócio.

Mais do que identificar os produtos com maior faturamento, a análise permite discutir rentabilidade, comportamento da demanda e decisões de investimento em estoque.
