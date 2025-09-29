use projeto_troca;

SELECT * from base_vendas;


alter table base_vendas
ADD UNIQUE (id_venda);


INSERT INTO base_vendas (id_venda)
VALUES (120);



SELECT produto, AVG(preco_unitario) AS preco_medio
FROM base_vendas
GROUP BY produto;


select produto, quantidade, nome_fornecedor, data_entregue
from base_vendas, fornecedores
where base_vendas.id_venda = fornecedores.id_vendas;


SELECT base_vendas.produto, base_vendas.quantidade, fornecedores.nome_fornecedor, fornecedores.data_entregue
from base_vendas, fornecedores
WHERE base_vendas.id_venda = fornecedores.id_vendas;