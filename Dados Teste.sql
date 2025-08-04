-- Clientes
INSERT INTO Cliente (nome, tipo, cpf_cnpj, email) VALUES
('Ana Silva', 'PF', '123.456.789-00', 'ana@example.com'),
('Empresa X', 'PJ', '12.345.678/0001-90', 'contato@empresax.com');

-- Pessoa (Fornecedor/Vendedor)
INSERT INTO Pessoa (nome, tipo) VALUES
('Carlos Vendedor', 'vendedor'),
('Fornecedor A', 'fornecedor'),
('João Mix', 'ambos');

-- Produtos
INSERT INTO Produto (nome, preco, id_fornecedor) VALUES
('Notebook', 3500.00, 1),
('Mouse Gamer', 150.00, 2),
('Teclado Mecânico', 300.00, 3);

-- Estoque
INSERT INTO Estoque (id_produto, quantidade) VALUES
(1, 10),
(2, 50),
(3, 20);

-- Pedidos
INSERT INTO Pedido (id_cliente) VALUES
(1),
(2);

-- Itens do pedido
INSERT INTO ItemPedido (id_pedido, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 1, 3500.00),
(1, 2, 2, 150.00),
(2, 3, 1, 300.00);

-- Pagamento
INSERT INTO Pagamento (id_pedido, forma_pagamento, valor) VALUES
(1, 'Cartão de Crédito', 3800.00),
(1, 'Boleto', 1000.00),
(2, 'PIX', 300.00);

-- Entrega
INSERT INTO Entrega (id_pedido, status, codigo_rastreio) VALUES
(1, 'Em transporte', 'BR123456789'),
(2, 'Entregue', 'BR987654321');
