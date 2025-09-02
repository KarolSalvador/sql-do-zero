--agrupa IdProduto, e soma todos. No exemplo cada linha está trazendo a soma para cada IdProduto

-- SELECT IdProduto,
--         count(*)

-- FROM transacao_produto

-- GROUP BY IdProduto


-- no exemplo abaixo mostra quantas transações cada cliente fez. 
--leitura: seleciona colune IdCliente, seleciona a coluna QtdePontos trazendo a soma, da tabela transacoes, onde a criação é maior ou igual a 2025-7-1 e menor que 2025-7-1, agrupando por IdCleinte (o que faz a soma de QtdPontos agrupa em única linha para cada cliente), HAVING filtra os que >= 4000 pontos, e no final ordena pelo cliente que mais juntou pontos

SELECT IdCliente,
        sum(QtdePontos),
        count(IdTransacao)

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

GROUP BY IdCliente
HAVING sum(QtdePontos) >= 4000

ORDER BY sum(QtdePontos) DESC
