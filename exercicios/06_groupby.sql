--Qual dia da semana quem mais pedidos em 2025?

SELECT strftime('%w', substr(DtCriacao, 1, 10)) AS diaSemana,
        count(DISTINCT IdTransacao) AS qtdeTransacao


FROM transacoes

WHERE substr(dtCriacao, 1, 4) = '2025'

GROUP By 1

ORDER BY 2 DESC