--Lista de pedidos realizados no fim de semana; São os 6 (sábado) e 0(domingo)

SELECT IdTransacao,
        DtCriacao,
        strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS diaSemana
        
        --substr() pega uma parcela da string da coluna DtCriacao

        -- datetime(substr(DtCriacao, 1, 19)), cria uma coluna convertendo a string para data

        -- strftime('%w', datetime(substr(DtCriacao, 1, 19))) pega apenas o dia da semana da data

FROM transacoes

WHERE diaSemana IN ('6', '0') -- seleciona os dias desejados