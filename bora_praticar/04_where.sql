--Selecione produtos que contêm ‘churn’ no nome--

SELECT *

FROM produtos

/* para informar vários valores para busca
Poderia colocar repetindo toda query usando o OR
WHERE DescProduto = 'Churn_10pp'
OR DescProduto = 'Churn_2pp'
OR DescProduto = 'Churn_5pp'

WHERE DescProduto IN ('Churn_10pp', 'Churn_2pp', 'Churn_5pp')
*/

/* para selecionar os que começam com Churn, onde o % vai indicar o coringa, pode ser colocado no inicio ou final. Pode ser colocado no meio de duas palavras ex: '%Item%'
*/
WHERE DescProduto LIKE 'Churn%'
