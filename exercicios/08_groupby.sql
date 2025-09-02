--Qual o produto com mais pontos transacionado?

SELECT IdProduto,
        sum(VlProduto) AS QtdePontosSum

FROM transacao_produto

GROUP BY 1
ORDER by 2 DESC

LIMIT 1