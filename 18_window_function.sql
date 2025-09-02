WITH tb_sumario_dias AS (

    SELECT substr(DtCriacao, 1, 10) AS dtDia,
            count(DISTINCT IdTransacao) AS qtdeTransacao

    FROM transacoes

    WHERE dtCriacao >= '2025-08-25'
    AND dtCriacao < '2025-08-30'

    GROUP BY dtDia  
)

SELECT *,
        sum(qtdeTransacao) OVER (ORDER BY dtDia) AS qtdeTransacaoAcum

FROM tb_sumario_dias