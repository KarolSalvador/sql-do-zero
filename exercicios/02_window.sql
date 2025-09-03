--Quantidade de usuários cadastrados (absoluto e acumulado) ao longo do tempo?
WITH tb_dia_cliente AS (
    SELECT substr(DtCriacao,1,10) AS dtDia,
            count(DISTINCT IdCliente) AS qtdCliente

    FROM clientes
    GROUP BY dtDia 
)

SELECT *,
        sum(qtdCliente) OVER (ORDER BY dtDia) AS qtdClientesAcum
FROM tb_dia_cliente