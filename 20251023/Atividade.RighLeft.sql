1 - Liste todos os clientes e seus produtos comprados (mesmo que o cliente não tenha feito compras).

Select
    v.produto,
    c.nome AS clientes
    FROM CLIENTES1 c
    LEFT JOIN VENDAS1 v 
        ON v.id_cliente = c.id_cliente

2 - Mostre os produtos vendidos, exibindo “Sem Cliente” para vendas sem cadastro.

Select
    v.produto,
    v.valor,
    NVL (c.nome, 'Sem cliente') AS clientes
    FROM CLIENTES1 c
    RIGHT JOIN VENDAS1 v 
        ON v.id_cliente = c.id_cliente

3 - Liste o nome e a cidade dos clientes sem nenhuma venda registrada.

Select
    c.cidade,
    c.nome AS clientes
    FROM CLIENTES1 c
    RIGHT JOIN VENDAS1 v 
        ON v.id_cliente = c.id_cliente
    WHERE v.id IS NULL;

4 - Gere um relatório consolidado com todas as cidades, exibindo a soma das vendas e indicando 0 quando não houve vendas.    

Select
    c.cidade,
    NVL (SUM ( v.valor),0) AS Total_vendas
    FROM CLIENTES1 c
    LEFT JOIN VENDAS1 v 
        ON v.id_cliente = c.id_cliente
        GROUP BY c.cidade;
