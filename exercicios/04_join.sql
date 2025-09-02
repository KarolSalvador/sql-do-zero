--04- Clientes mais antigos, tem mais frequência de transação?

--julianday é uma função que converte uma data ou hora para o número de dias desde uma data de referência específica. Esta função é frequentemente usada para calcular diferenças entre datas, retornando um número que representa a quantidade de dias que se passaram.

--no exercicio estamos comparado a data de hoje com a data de criação

SELECT t1.IdCliente,
        julianday('now') - julianday(substr(t1.DtCriacao, 1, 19)) AS idadeBase,
        count(t2.IdTransacao) AS qtdeTransacoes

FROM clientes AS t1

LEFT JOIN transacoes AS t2
ON t1.IdCliente = t2.IdCliente

GROUP BY t1.IdCliente, idadeBase