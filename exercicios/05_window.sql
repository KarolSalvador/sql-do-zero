--Quantidade de transações Acumuladas ao longo do tempo (diário)? Quando atingiu 100.000 transações acumuladas?


WITH tb_diario AS (
    SELECT substr(DtCriacao,1,10) AS dtDia,
            count(DISTINCT IdTransacao) AS qtdTransacao
    FROM transacoes

    GROUP by dtDia
    ORDER BY dtDia

),

tb_acum AS (
    SELECT *,
            sum(qtdTransacao) OVER (ORDER BY dtDia) AS qtdeTransacaoAcum

    FROM tb_diario

)

SELECT *
FROM tb_acum
WHERE qtdeTransacaoAcum > 100000
ORDER BY qtdeTransacaoAcum
LIMIT 1