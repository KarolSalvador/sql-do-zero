--Saldo de pontos acumulado de cada usuário

WITH tb_cliente_dia AS (
    SELECT IdCliente,
            substr(DtCriacao,1,10) AS dtDia,
            sum(QtdePontos) AS totalPontos
    FROM transacoes

    GROUP by IdCliente, dtDia
)

SELECT *,
        sum(totalPontos) OVER (PARTITION BY idCliente ORDER BY dtDia) AS saldoPontos
FROM tb_cliente_dia