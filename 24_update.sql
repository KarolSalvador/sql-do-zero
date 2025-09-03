--faz alteração de dados em uma tabela. é PRIMORDIAL usar o WHERE caso contrário irá alterar todos os registros de uma determinada coluna. No update que fzemos no exemplo está alterando apenas os registros com DtDia maior ou igual a 2025-05-25. 

SELECT *
FROM relatorio_diario;

UPDATE relatorio_diario
SET qtdTransacao = 10000
WHERE dtDia >= '2025-05-25'
;