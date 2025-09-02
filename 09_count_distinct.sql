-- combinando ambos podemos filtrar quantos registros distintos possuem em uma determinada coluna ou seleção.
-- no exemploestá contando tudo, contando todos os distintos de IDTransacao, todos os distintos de IDCliente(que efetuaram transação) onde a criação é maior ou igual a 01/07/2025 e menor que 01/08/2025

SELECT count(*),
        count(DISTINCT IdTransacao),
        count(DISTINCT IdCliente)

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'