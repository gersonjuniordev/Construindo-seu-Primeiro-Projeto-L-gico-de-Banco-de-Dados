1. Quantos pedidos foram feitos por cliente

SELECT c.nome, COUNT(p.id) AS total_pedidos
FROM Cliente c
JOIN Pedido p ON c.id = p.id_cliente
GROUP BY c.nome;

2. Algum vendedor também é fornecedor?

SELECT nome FROM Pessoa WHERE tipo = 'ambos';

3. Relação de produtos, fornecedores e estoques

SELECT pr.nome AS produto, pe.nome AS fornecedor, e.quantidade
FROM Produto pr
JOIN Pessoa pe ON pr.id_fornecedor = pe.id
JOIN Estoque e ON e.id_produto = pr.id;

4. Relação de nomes dos fornecedores e produtos

SELECT DISTINCT pe.nome AS fornecedor, pr.nome AS produto
FROM Pessoa pe
JOIN Produto pr ON pe.id = pr.id_fornecedor
WHERE pe.tipo IN ('fornecedor', 'ambos');

5. Produtos com valor total por pedido (atributo derivado)

SELECT p.id AS pedido, SUM(ip.quantidade * ip.preco_unitario) AS valor_total
FROM Pedido p
JOIN ItemPedido ip ON p.id = ip.id_pedido
GROUP BY p.id
HAVING valor_total > 1000;

6. Pedidos ordenados por data mais recente

SELECT * FROM Pedido ORDER BY data_pedido DESC;