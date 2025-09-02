--LEITURA: selcione tudo da tabela transacao_produto (t1) e traga DescProduto da tabela produtos (t2), tendo como referência a transacao_produto junte a tabela produtos referêciando o id produto de transicao_produto que for igual ao idProduto de produtos

SELECT t1.*,
        t2.DescProduto

FROM transacao_produto AS t1

LEFT JOIN produtos AS t2
ON t1.IdProduto = t2.IdProduto

LIMIT 10