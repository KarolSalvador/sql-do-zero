--Quantos produtos são de rpg?

SELECT DescCateogriaProduto,
        count(*)

FROM produtos

WHERE DescCateogriaProduto = 'rpg'