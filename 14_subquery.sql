--Lista de transações com o produto “Resgatar Ponei”;

--subqueries colocam uma condição no WHERE dentro do resultado de uma outra query

SELECT *
FROM transacao_produto AS t1

WHERE t1.IdProduto IN (
    SELECT IdProduto
    FROM produtos
    WHERE DescProduto = 'Resgatar Ponei'
)