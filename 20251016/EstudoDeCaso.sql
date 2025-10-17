## 💼 Estudo de Caso: Relatório Gerencial “Clientes e Suas Vendas”

### Missão:

Crie um relatório consolidado que mostre:

- Nome do cliente
- Cidade
- Quantidade de vendas realizadas
- Valor total
- Ticket médio

SELECT 
    c.nome AS clientes,
    c.cidade,
    COUNT(id) AS qntd_vendas,
    SUM(v.valor) AS valor_total,
    ROUND(AVG(v.valor),2) AS ticket_medio
FROM clientes c
    INNER JOIN VENDAS v
    ON v.id_cliente = c.id_cliente
GROUP BY c.nome,c.cidade
ORDER BY c.nome 