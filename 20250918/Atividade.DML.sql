1) Inserindo dados de clientes

INSERT INTO CLIENTES (Nome, Email) VALUES ('Nicolle Nogueira', 'nicolle.nsilva@gmail.com');
INSERT INTO CLIENTES (Nome, Email) VALUES ('Sofia Almeida', 'sofi.almeda@hotmail.com');
INSERT INTO CLIENTES (Nome, Email) VALUES ('Jose Campos', 'joao.cm@hotmail.com);

2) Atualizando preços de produtos

UPDATE PRODUTOS SET preco = preco*1.10  WHERE tipo = 'Notebook';

3) Removendo pedidos cancelados

DELETE FROM PEDIDOS WHERE status = 'CANCELADO';

4) Usando MERGE para atualizar clientes

MERGE INTO CLIENTES A 
USING CLIENTES_STG B
ON (A.Email = B.Email)
WHEN MATCHED THEN
    UPDATE SET A.Nome = B.Nome 
WHEN NOT MATCHED THEN 
    INSERT (Nome, Email)
    VALUES (B.Nome, B.Email);


