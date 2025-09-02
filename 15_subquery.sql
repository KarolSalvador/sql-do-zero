--9. Dos clientes que começaram SQL no primeiro dia, quantos chegaram ao 5o dia?

--leitura: seleciona todas as colunas da tabela transações com filtro dos clientes que tiveram transações dia 29 e clientes que fizeram alguma transação dia 25

SELECT count(DISTINCT IdCliente)

FROM transacoes AS t1

WHERE t1.IdCliente IN (
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
)
AND substr(t1.DtCriacao, 1, 10) = '2025-08-29'