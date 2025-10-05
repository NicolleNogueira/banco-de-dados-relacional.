1 - Liste todos os produtos mais caros do que o produto mais barato da categoria "Eletrônicos".

SELECT produto, valor
FROM VENDAS
WHERE valor > (SELECT MIN(valor) FROM VENDAS WHERE categoria = 'Eletrônicos' );

2- Mostre o vendedor que realizou a maior venda registrada na tabela.

SELECT produto, vendedor, valor
FROM VENDAS
WHERE valor = (SELECT MAX(valor) FROM VENDAS );

3- Liste as categorias que têm pelo menos um produto acima do preço médio geral.

SELECT DISTINCT categoria, valor
FROM VENDAS 
WHERE valor > (SELECT AVG(valor) FROM VENDAS);


