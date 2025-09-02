/* adicionar uma vírgula pode-se informar uma coluna + alguma informação para criar uma nova coluna (geralmente uma expressão mat);
O AS cria um alias para nomear a coluna
*/

/* a função substr() cria uma nova coluna com uma um trecho da coluna indicada dentro do parenteses, onde irá começar e terminar essa seleção. Ex: substr(nomeColuna, posiçãoIinicial, posiçãoFinal
*/

SELECT IdCliente,
        -- QtdePontos,
        -- QtdePontos + 10 AS QtdePontosPlus10,
        -- QtdePontos * 2 AS QtdePontosDouble,
        DtCriacao,
        datetime(substr(DtCriacao, 1, 19)) AS dtCriacaoNova,
        strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS diaSemana

FROM clientes