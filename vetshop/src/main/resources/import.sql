INSERT INTO categoria (nome) VALUES ('Medicamentos');
INSERT INTO categoria (nome) VALUES ('Suplementos');
INSERT INTO categoria (nome) VALUES ('Curativos');
INSERT INTO categoria (nome) VALUES ('Rações');
INSERT INTO categoria (nome) VALUES ('Acessórios');

INSERT INTO produto (preco, categoria_id, nome) VALUES (1.0, 1, 'Vermífugo ABC');
INSERT INTO produto (preco, categoria_id, nome) VALUES (1.0, 1, 'Vermífugo DEF');
INSERT INTO produto (preco, categoria_id, nome) VALUES (1.0, 1, 'Vermífugo GHI');
INSERT INTO produto (preco, categoria_id, nome) VALUES (1.0, 1, 'Vermífugo JKL');
INSERT INTO produto (preco, categoria_id, nome) VALUES (1.0, 1, 'Vermífugo MNO');

INSERT INTO produto (preco, categoria_id, nome) VALUES (2.0, 2, 'Suplemento ABC');
INSERT INTO produto (preco, categoria_id, nome) VALUES (2.0, 2, 'Suplemento DEF');
INSERT INTO produto (preco, categoria_id, nome) VALUES (2.0, 2, 'Suplemento GHI');
INSERT INTO produto (preco, categoria_id, nome) VALUES (2.0, 2, 'Suplemento JKL');
INSERT INTO produto (preco, categoria_id, nome) VALUES (2.0, 2, 'Suplemento MNO');

INSERT INTO produto (preco, categoria_id, nome) VALUES (3.0, 3, 'Curativo ABC');
INSERT INTO produto (preco, categoria_id, nome) VALUES (3.0, 3, 'Curativo DEF');
INSERT INTO produto (preco, categoria_id, nome) VALUES (3.0, 3, 'Curativo GHI');
INSERT INTO produto (preco, categoria_id, nome) VALUES (3.0, 3, 'Curativo JKL');
INSERT INTO produto (preco, categoria_id, nome) VALUES (3.0, 3, 'Curativo MNO');

INSERT INTO produto (preco, categoria_id, nome) VALUES (4.0, 4, 'Ração ABC');
INSERT INTO produto (preco, categoria_id, nome) VALUES (4.0, 4, 'Ração DEF');
INSERT INTO produto (preco, categoria_id, nome) VALUES (4.0, 4, 'Ração GHI');
INSERT INTO produto (preco, categoria_id, nome) VALUES (4.0, 4, 'Ração JKL');
INSERT INTO produto (preco, categoria_id, nome) VALUES (4.0, 4, 'Ração MNO');

INSERT INTO produto (preco, categoria_id, nome) VALUES (5.0, 5, 'Acessório ABC');
INSERT INTO produto (preco, categoria_id, nome) VALUES (5.0, 5, 'Acessório DEF');
INSERT INTO produto (preco, categoria_id, nome) VALUES (5.0, 5, 'Acessório GHI');
INSERT INTO produto (preco, categoria_id, nome) VALUES (5.0, 5, 'Acessório JKL');
INSERT INTO produto (preco, categoria_id, nome) VALUES (5.0, 5, 'Acessório MNO');

INSERT INTO cliente (nome, cpf, email, telefone) VALUES ('Allan', '12345678909', 'allan@hotmail.com', '(11) 98765-4321');
INSERT INTO cliente (nome, cpf, email, telefone) VALUES ('Diogo', '98765432100', 'diogo@hotmail.com', '(21) 99876-5432');
INSERT INTO cliente (nome, cpf, email, telefone) VALUES ('Breno', '45678912330', 'breno@hotmail.com', '(31) 91234-5678');
INSERT INTO cliente (nome, cpf, email, telefone) VALUES ('Eber', '32165498740', 'eber@hotmail.com', '(41) 97654-3210');
INSERT INTO cliente (nome, cpf, email, telefone) VALUES ('Guilherme', '78912345650', 'guilherme@hotmail.com', '(51) 93456-7890');

INSERT INTO fornecedor (razao_social, cnpj, email, telefone) VALUES ('NutriPlus', '12345678000190', 'nutri_plus@hotmail.com', '(61) 98765-1234');
INSERT INTO fornecedor (razao_social, cnpj, email, telefone) VALUES ('SaúdeNova', '98765432000180', 'saude_nova@hotmail.com', '(71) 99876-2345');
INSERT INTO fornecedor (razao_social, cnpj, email, telefone) VALUES ('CuraCerta', '45678912000160', 'cura_verta@hotmail.com', '(81) 91234-5678');
INSERT INTO fornecedor (razao_social, cnpj, email, telefone) VALUES ('NutriPet', '32165498000170', 'nutri_pet@hotmail.com', '(91) 97654-7890');
INSERT INTO fornecedor (razao_social, cnpj, email, telefone) VALUES ('AmigoFiel', '78912345000150', 'amigo_fiel@hotmail.com', '(51) 93456-0123');

INSERT INTO pedido (nome, cliente_id, fornecedor_id, data_inclusao, data_alteracao) VALUES ('Medicamentos Allan', 1, 1, PARSEDATETIME('2024-11-03-00.00.00','yyyy-MM-dd-HH.mm.ss'), NULL);
INSERT INTO pedido (nome, cliente_id, fornecedor_id, data_inclusao, data_alteracao) VALUES ('Suplementos Diogo', 2, 2, PARSEDATETIME('2024-11-03-00.00.00','yyyy-MM-dd-HH.mm.ss'), NULL);
INSERT INTO pedido (nome, cliente_id, fornecedor_id, data_inclusao, data_alteracao) VALUES ('Curativos Breno', 3, 3, PARSEDATETIME('2024-11-03-00.00.00','yyyy-MM-dd-HH.mm.ss'), NULL);
INSERT INTO pedido (nome, cliente_id, fornecedor_id, data_inclusao, data_alteracao) VALUES ('Rações Eber', 4, 4, PARSEDATETIME('2024-11-03-00.00.00','yyyy-MM-dd-HH.mm.ss'), NULL);
INSERT INTO pedido (nome, cliente_id, fornecedor_id, data_inclusao, data_alteracao) VALUES ('Acessórios Guilherme', 5, 5, PARSEDATETIME('2024-11-03-00.00.00','yyyy-MM-dd-HH.mm.ss'), NULL);

INSERT INTO item_pedido (pedido_id, produto_id) VALUES (1, 1), (1, 2),(1,3);
INSERT INTO item_pedido (pedido_id, produto_id) VALUES (2, 6), (2, 7),(2,8);
INSERT INTO item_pedido (pedido_id, produto_id) VALUES (3, 11), (3, 12),(3,13);
INSERT INTO item_pedido (pedido_id, produto_id) VALUES (4, 16), (4, 17),(4,18);
INSERT INTO item_pedido (pedido_id, produto_id) VALUES (5, 21), (5, 22),(5,23);