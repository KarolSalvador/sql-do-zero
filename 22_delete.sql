--para deletar registros de uma determinada tabela
--pode também excluir registros especificos com o FROM

DELETE FROM relatorio_diario;

-- DELETE FROM relatorio_diario
-- WHERE strftime('%w', substr(dtDia,1,10)) = '0';

-- SELECT * FROM relatorio_diario;