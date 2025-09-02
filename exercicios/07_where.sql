-- Lista de produtos que são “chapéu”;

SELECT *

FROM produtos

WHERE DescProduto LIKE '%chapéu%'

--caso queira todos menos o que tem chapéu basta negar com NOT: WHERE DescProduto NOT LIKE '%chapéu%'