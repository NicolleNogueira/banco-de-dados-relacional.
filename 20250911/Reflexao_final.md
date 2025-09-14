Estudo de Caso – Etapa 6: Reflexão Final

1. Por que a normalização foi essencial para a integridade dos dados da fábrica?
A normalização foi essencial para garantir que não houvesse informações duplicadas, facilitando a atualização dos registros. Com os dados organizados em tabelas separadas e bem relacionadas, evitamos erros como divergência nos nomes de clientes, funcionários ou fornecedores. Além disso, a normalização facilita manutenções futuras.

2. Em que situações a desnormalização se torna uma escolha estratégica, e não um erro?
A desnormalização se torna uma estratégia quando a prioridade é a velocidade de leitura ou geração de relatórios. No caso da fábrica Concreto++, a equipe de BI estava com dificuldades, pois as consultas exigiam muitos JOINs entre mais de seis tabelas, tornando o processo lento. Criar uma tabela desnormalizada com dados prontos para leitura, mesmo que repetidos, foi uma solução eficiente para acelerar esse processo.

3. Quais riscos a tabela desnormalizada pode trazer? Como você mitigaria esses riscos?
O principal risco de uma tabela desnormalizada é a desatualização: se houver mudanças nas tabelas originais, a tabela desnormalizada pode conter dados antigos e inconsistentes. Para mitigar esse problema, é possível automatizar a atualização dessa tabela, agendando scripts ou criando mecanismos que alertem caso haja inconsistência nos dados.

4. Qual seria o impacto de não aplicar a BCNF neste cenário?
A BCNF é essencial para garantir que todas as dependências dentro do banco de dados façam sentido e estejam corretamente organizadas. Se ela não for aplicada, atributos podem acabar dependendo de colunas que não são chave primária, o que pode gerar inconsistências, duplicidade de dados e falhas nas regras de negócio. 

