Exercício A:

> Liste todos os produtos vendidos por “Ana”, ordenados por data.

 Select Produto, data_venda, vendedor from VENDAS where vendedor = 'Ana';

 Exercício B:

> Mostre o valor total vendido na categoria “Eletrônicos”.

 Select SUM (valor) AS total_eletronicos from VENDAS where categoria = 'Eletrônicos';

 Exercício C:

> Quais produtos custam entre R$200 e R$1000? Mostre nome e valor.

Select Produto, valor from VENDAS where valor BETWEEN 200 and 1000;


 Exercício D (Desafio):

> Mostre quantas vendas cada vendedor realizou e o valor total vendido por ele, ordenado do maior para o menor faturamento.

Select vendedor,
        count(*) qnt_vendas,
        Sum(valor) total_vendas
    From VENDAS 
    GROUP BY Vendedor
    ORDER BY total_vendas DESC   
