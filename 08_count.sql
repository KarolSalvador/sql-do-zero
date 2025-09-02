--o count(*) retorna a quantidade de linhas tem na tabela considerando todas as colunas (não nulas), pode ser usado para uma coluna especifica, ex: count(IdCliente), considerando apenas valores não nulos.

-- SELECT count(*),
--         count(1)

-- FROM clientes

--DISTINCT trás os valores distintos de linhas, no exemplo ele compara as duas colunas e retorna apenas 1 linha de cada repetição (na tabela existem várias linhas de FlTwitch e FlEmail que tem 0 | 0, 1 | 0, mas ele está trazendo apenas uma para representar cada.

SELECT DISTINCT FlTwitch, FlEmail

FROM clientes

