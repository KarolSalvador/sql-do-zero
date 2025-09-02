--usado para somar o valor das linhas selecionadas na query

--leitura: selecione a soma de QTDpontos de transacoes onde dtcriação é maior ou igual a 01-07-2025 e menor que 01-08-2025 e que a qtdpontos seja maior que 0

-- SELECT sum(QtdePontos)

-- FROM transacoes

-- WHERE DtCriacao >= '2025-07-01'
-- AND DtCriacao < '2025-08-01'
-- AND QtdePontos > 0

--no caso abaixo está filtrando aplicando condição, e o sum está somando, poderia ser feito sem a sum para listar todas as linhas

SELECT  sum(QtdePontos),

        sum(CASE
            WHEN QtdePontos > 0 THEN QtdePontos
        END) AS QtdePontosPositivos,

        sum(CASE 
            WHEN QtdePontos < 0 THEN QtdePontos
        END) AS QtdePontosNegativos,

        count(CASE 
                WHEN QtdePontos < 0 THEN QtdePontos
        END) AS QtdeNegaticos

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

ORDER BY QtdePontos
