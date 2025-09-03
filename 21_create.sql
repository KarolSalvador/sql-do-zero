--quantidade de transacoes acumuladas ao longo do tempo (diário)?

DROP TABLE IF EXISTS relatorio_diario;

CREATE TABLE IF NOT EXISTS relatorio_diario AS

    WITH tb_diario AS (
        SELECT substr(dtCriacao,1,10) as dtDia,
                count(DISTINCT IdTransacao) AS qtdTransacao
        FROM transacoes
        GROUP BY dtDia
    ),

    tb_acum AS (
        SELECT *,
                sum(qtdTransacao) OVER (ORDER BY dtDia) AS qtdeTransacaoAcum
        FROM tb_diario
    )

    SELECT *
    FROM tb_acum
;

SELECT * FROM relatorio_diario;