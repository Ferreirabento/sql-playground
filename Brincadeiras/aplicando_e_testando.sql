use projeto_troca;

SELECT * from base_vendas;


alter table base_vendas
ADD UNIQUE (id_venda);


INSERT INTO base_vendas (id_venda)
VALUES (120);



