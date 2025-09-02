--funciona como o if, onde você pode criar condições para a query. Um CASE gera apenas uma coluna, independente da quantidade de WHEN dentro dele

-- Intervalos
-- De 0 a 500      -> Ponei
-- de 501 a 1000   -> Ponei Premium
-- de 1001 a 5000  -> Mago Aprendiz
-- de 5001 a 1000  -> Mago Mestre
-- +1001           -> Mago Supremo

SELECT  IdCliente,
        QtdePontos,
        CASE
            WHEN QtdePontos <= 500 THEN 'Ponei'
            WHEN QtdePontos <= 1000 THEN 'Ponei Premium'
            WHEN QtdePontos <= 5000 THEN 'Mago Aprendiz'
            WHEN QtdePontos <= 10000 THEN 'Mago Mestre'
            ELSE 'Mago Supremo'
        END AS NomeGrupo

FROM clientes

ORDER BY  QtdePontos DESC

