use ecommerce;

-- Inserindo informações na tabela clientes
insert into clients(Fname, Minit, Lname, CPF, Address, clientType)
values
    ('John', 'A', 'Doe', '12345678900', '123 Main St', 'PF'),
    ('Jane', 'B', 'Smith', '98765432100', '456 Elm St', 'PF'),
    ('Michael', 'C', 'Johnson', '11122233300', '789 Oak Ave', 'PF'),
    ('Emily', 'D', 'Williams', '44455566600', '567 Pine Rd', 'PF'),
    ('David', 'E', 'Brown', '77788899900', '890 Maple Ln', 'PF'),
    ('Sarah', 'F', 'Jones', '55544433300', '234 Birch Ct', 'PJ'),
    ('Robert', 'G', 'Anderson', '99988877700', '678 Cedar St', 'PJ'),
    ('Jennifer', 'H', 'Martinez', '22233344400', '789 Pine St', 'PF'),
    ('William', 'I', 'Garcia', '88877766600', '345 Oak Dr', 'PF'),
    ('Jessica', 'J', 'Lee', '66655544400', '456 Maple Ave', 'PF'),
    ('Chris', 'K', 'Rodriguez', '44433322200', '567 Birch Rd', 'PF'),
    ('Alex', 'L', 'Smith', '12398745600', '890 Pine Ln', 'PF'),
    ('Sophia', 'M', 'Davis', '45612378900', '345 Cedar Ave', 'PF'),
    ('Daniel', 'N', 'Wilson', '78945612300', '678 Elm Dr', 'PJ'),
    ('Olivia', 'O', 'Miller', '33366699900', '123 Oak Rd', 'PJ'),
    ('James', 'P', 'Moore', '22288855500', '456 Maple St', 'PF'),
    ('Ava', 'Q', 'Taylor', '44499933300', '567 Pine Ave', 'PF'),
    ('Liam', 'R', 'Anderson', '77755588800', '678 Cedar Ln', 'PF'),
    ('Emma', 'S', 'Martinez', '88822277700', '789 Birch Ct', 'PF'),
    ('Noah', 'T', 'Garcia', '66644411100', '234 Elm St', 'PF');

-- Inserindo informações na tabela produtos
insert into product(Pname, ClassificationKids, Category, Avaliação, size)
values
    ('Fone de Ouvido', false, 'Eletrônico', 4.0, null),
    ('Smartphone', false, 'Eletrônico', 4.5, null),
    ('Camiseta Branca', true, 'Vestimenta', 3.8, 'M'),
    ('Boneca de Pelúcia', true, 'Brinquedos', 4.2, null),
    ('Chocolate Amargo', false, 'Alimentos', 4.7, null),
    ('Sofá de Couro', false, 'Móveis', 4.3, 'G'),
    ('Relógio de Pulso', false, 'Vestimenta', 4.6, null),
    ('Calça Jeans', false, 'Vestimenta', 4.1, 'L'),
    ('Carrinho de Controle Remoto', true, 'Brinquedos', 4.4, null),
    ('Notebook', false, 'Eletrônico', 4.8, null),
    ('Cadeira de Escritório', false, 'Móveis', 4.2, null),
    ('Bicicleta Infantil', true, 'Brinquedos', 4.3, 'Infantil'),
    ('Colar de Prata', false, 'Vestimenta', 4.7, null),
    ('Vestido de Festa', false, 'Vestimenta', 4.9, 'M'),
    ('Quebra-Cabeça', true, 'Brinquedos', 4.0, null),
    ('Cereal Matinal', true, 'Alimentos', 3.5, null),
    ('Mesa de Jantar', false, 'Móveis', 4.6, 'G'),
    ('Tênis Esportivo', true, 'Vestimenta', 4.2, '42'),
    ('Caixa de Som Bluetooth', false, 'Eletrônico', 4.5, null),
    ('Televisão', false, 'Eletrônico', 4.5, null);

-- Inserindo informações na tabela pedidos
insert into orders (idOrderClient, orderStatus, orderDescription, taxValue, paymentCash)
values
    (1, 'Confirmado', 'Compra via aplicativo', 10, 0),
    (2, 'Em Processamento', 'Pedido de roupas', 5, 1),
    (3, 'Confirmado', 'Eletrônicos', 15, 0),
    (4, 'Cancelado', 'Brinquedos para crianças', 2, 1),
    (5, 'Em Processamento', 'Itens de mobília', 8, 0),
    (6, 'Confirmado', 'Alimentos e bebidas', 7, 1),
    (7, 'Confirmado', 'Presentes para aniversário', 12, 0),
    (8, 'Cancelado', 'Itens esportivos', 3, 1),
    (9, 'Em Processamento', 'Produtos de beleza', 6, 0),
    (10, 'Confirmado', 'Eletrônicos', 9, 1),
    (11, 'Confirmado', 'Compra via aplicativo', 11, 0),
    (12, 'Em Processamento', 'Roupas e acessórios', 4, 1),
    (13, 'Cancelado', 'Brinquedos educativos', 1, 0),
    (14, 'Confirmado', 'Itens de decoração', 13, 1),
    (15, 'Confirmado', 'Vestido de festa', 20, 0),
    (16, 'Em Processamento', 'Calçados e acessórios', 6, 1),
    (17, 'Confirmado', 'Eletrônicos', 18, 0),
    (18, 'Cancelado', 'Itens para casa', 2, 1),
    (19, 'Confirmado', 'Produtos de cuidado pessoal', 9, 0),
    (20, 'Em Processamento', 'Compra via aplicativo', 5, 1);

-- Inserindo informações na tabela pedido de produtos
insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus)
values
    (1, 1, 2, 'Disponível'),
    (2, 2, 1, 'Disponível'),
    (3, 3, 3, 'Disponível'),
    (4, 4, 1, 'Disponível'),
    (5, 5, 2, 'Disponível'),
    (6, 6, 2, 'Sem Estoque'),
    (7, 7, 1, 'Disponível'),
    (8, 8, 4, 'Disponível'),
    (9, 9, 2, 'Disponível'),
    (10, 10, 1, 'Disponível'),
    (11, 11, 1, 'Disponível'),
    (12, 12, 1, 'Sem Estoque'),
    (13, 13, 3, 'Disponível'),
    (14, 14, 2, 'Disponível'),
    (15, 15, 2, 'Sem Estoque'),
    (16, 16, 1, 'Disponível'),
    (17, 17, 1, 'Disponível'),
    (18, 18, 2, 'Sem Estoque'),
    (19, 19, 5, 'Disponível'),
    (20, 20, 6, 'Disponível');

-- Inserindo informações na tabela armazenamento de produtos
insert into productStorage (storageLocation, quantity)
values
    ('Rio de Janeiro', 50),
    ('São Paulo', 30),
    ('Belo Horizonte', 25),
    ('Brasília', 40),
    ('Curitiba', 15),
    ('Salvador', 10),
    ('Fortaleza', 20),
    ('Recife', 18),
    ('Porto Alegre', 22),
    ('Manaus', 8),
    ('Belém', 5),
    ('Goiânia', 28),
    ('Campinas', 17),
    ('Natal', 12),
    ('Vitória', 14),
    ('São Luís', 7),
    ('Florianópolis', 9),
    ('João Pessoa', 11),
    ('Teresina', 6),
    ('Cuiabá', 13);

-- Inserindo informações na tabela localidade de armazenamento
insert into storageLocation (idLproduct, idLstorage, location)
values
    (1, 1, 'RJ'),
    (2, 2, 'SP'),
    (3, 3, 'BH'),
    (4, 4, 'BSB'),
    (5, 5, 'PR'),
    (6, 6, 'SSA'),
    (7, 7, 'CE'),
    (8, 8, 'PE'),
    (9, 9, 'RS'),
    (10, 10, 'MAO'),
    (11, 11, 'PA'),
    (12, 12, 'GO'),
    (13, 13, 'RMC'),
    (14, 14, 'RN'),
    (15, 15, 'VIX'),
    (16, 16, 'MA'),
    (17, 17, 'SC'),
    (18, 18, 'PB'),
    (19, 19, 'PI'),
    (20, 20, 'MT');

-- Inserindo informações na tabela fornecedor
insert into supplier(SocialName, CNPJ, contact)
values
    ('Almeida e Familia', '123456789012345', '12345678900'),
    ('Fornecedora ABC Ltda', '98765432109876', '98765432101'),
    ('Suprimentos XYZ S/A', '45678901234567', '45678901234'),
    ('Fornecedores do Sul EIRELI', '23456789012345', '23456789012'),
    ('Comércio de Peças Ltda', '34567890123456', '34567890123'),
    ('Distribuidora de Eletrônicos S/A', '56789012345678', '56789012345'),
    ('Fornecedores Unidos EIRELI', '78901234567890', '78901234567'),
    ('Comércio de Alimentos Ltda', '67890123456789', '67890123456'),
    ('Suprimentos Expresso Ltda', '89012345678901', '89012345678'),
    ('Fornecedora Global S/A', '98701234567890', '98701234567'),
    ('Comércio de Roupas EIRELI', '45612378901234', '45612378901'),
    ('Distribuidora de Brinquedos Ltda', '56723489012345', '56723489012'),
    ('Fornecedores do Norte S/A', '67834590123456', '67834590123'),
    ('Comércio de Eletrônicos EIRELI', '78945601234567', '78945601234'),
    ('Distribuidora de Alimentos Ltda', '89056712345678', '89056712345'),
    ('Fornecedores de Peças Ltda', '90167823456789', '90167823456'),
    ('Comércio Expresso S/A', '01278934567890', '01278934567'),
    ('Distribuidora Global EIRELI', '12389045678901', '12389045678'),
    ('Fornecedora do Oeste Ltda', '23490156789012', '23490156789'),
    ('Comércio de Brinquedos S/A', '34501267890123', '34501267890');

-- Inserindo informações na tabela produto do fornecedor
insert into productSupplier(idPsSupplier, idPsProduct, quantity)
values
    (1, 1, 80),
    (2, 2, 10),
    (3, 3, 25),
    (4, 4, 5),
    (5, 5, 15),
    (6, 6, 30),
    (7, 7, 20),
    (8, 8, 40),
    (9, 9, 60),
    (10, 10, 50),
    (11, 11, 35),
    (12, 12, 12),
    (13, 13, 18),
    (14, 14, 70),
    (15, 15, 8),
    (16, 16, 22),
    (17, 17, 3),
    (18, 18, 7),
    (19, 19, 28),
    (20, 20, 13);

-- Inserindo informações na tabela vendendor
insert into seller(socialName, AbstName, CNPJ, CPF, location, contact)
values
    ('Almeida e Familia', 'AF', '123456789012345', '11111111111', 'São Paulo', '12345678900'),
    ('Comércio de Alimentos Ltda', 'CMA', '67890123456789', '22222222222', 'Rio de Janeiro', '67890123456'),
    ('Fornecedora ABC Ltda', 'F.ABC', '98765432109876', '33333333333', 'Belo Horizonte', '98765432101'),
    ('StoreY', 'StoreY Comércio', '44444444444444', '44444444444', 'Curitiba', '44444444444'),
    ('Loja dos Desejos', 'Desejos e Cia.', '55555555555555', '55555555555', 'Salvador', '55555555555'),
    ('Eletrônicos Expert', 'Expert Eletro', '66666666666666', '66666666666', 'Fortaleza', '66666666666'),
    ('Bazar Parceiro', 'Bazar Parceiro LTDA', '77777777777777', '77777777777', 'Recife', '77777777777'),
    ('Roupas Charmosas', 'Charm Clothing', '88888888888888', '88888888888', 'Porto Alegre', '88888888888'),
    ('Mega Gadgets', 'Mega Gadgets Eletrônicos', '99999999999999', '99999999999', 'Manaus', '99999999999'),
    ('Loja da Luciana', 'Luciana Comércio', '10101010101010', '10101010101', 'Belém', '10101010101'),
    ('Super Tech', 'Tech Total', '12121212121212', '12121212121', 'Goiânia', '12121212121'),
    ('Roupas Estilosas', 'Roupas Estilosas LTDA', '13131313131313', '13131313131', 'Campinas', '13131313131'),
    ('Acessórios Luxuosos', 'Acessórios Premium', '14141414141414', '14141414141', 'Natal', '14141414141'),
    ('Decoração Fina', 'Decoração Fina', '15151515151515', '15151515151', 'Vitória', '15151515151'),
    ('Loja da Isabela', 'Isabela Comércio', '16161616161616', '16161616161', 'São Luís', '16161616161'),
    ('Tech Innovare', 'Tech Innovare Eletrônicos', '17171717171717', '17171717171', 'Florianópolis', '17171717171'),
    ('Brinquedos Incríveis', 'Brinquedos Incríveis', '18181818181818', '18181818181', 'João Pessoa', '18181818181'),
    ('Alimentos Naturais', 'Alimentos Naturais LTDA', '19191919191919', '19191919191', 'Teresina', '19191919191'),
    ('Móveis Sofisticados', 'Móveis Sofisticados', '20202020202020', '20202020202', 'Cuiabá', '20202020202'),
    ('Calçados Elegantes', 'Calçados Elegantes LTDA', '21212121212121', '21212121212', 'Brasília', '21212121212');

-- Inserindo informações na tabela produto do vendendor
insert into productSeller(idPSeller, idProduct, prodQuantity)
values
    (1, 6, 80),
    (2, 8, 10),
    (3, 12, 25),
    (4, 15, 5),
    (5, 2, 15),
    (6, 10, 30),
    (7, 18, 20),
    (8, 5, 40),
    (9, 9, 60),
    (10, 14, 50),
    (11, 20, 35),
    (12, 3, 12),
    (13, 16, 18),
    (14, 1, 70),
    (15, 7, 8),
    (16, 13, 22),
    (17, 4, 3),
    (18, 11, 7),
    (19, 17, 28),
    (20, 19, 13);

-- Inserindo informações na tabela pagamentos
insert into payments(idPayment, idPaymentClient, typePayment, limitAvaliable)
values
    (1, 1, 'Dois Cartões', 500),
    (2, 2, 'Boleto', 0),
    (3, 3, 'Cartão de Crédito', 200),
    (4, 4, 'Boleto', 0),
    (5, 5, 'Cartão de Crédito', 1000),
    (6, 6, 'Boleto', 0),
    (7, 7, 'Cartão de Crédito', 1500),
    (8, 8, 'Boleto', 0),
    (9, 9, 'Cartão de Crédito', 300),
    (10, 10, 'Boleto', 0),
    (11, 11, 'Dois Cartões', 800),
    (12, 12, 'Boleto', 0),
    (13, 13, 'Cartão de Crédito', 450),
    (14, 14, 'Dois Cartões', 0),
    (15, 15, 'Cartão de Crédito', 700),
    (16, 16, 'Boleto', 0),
    (17, 17, 'Cartão de Crédito', 900),
    (18, 18, 'Dois Cartões', 0),
    (19, 19, 'Cartão de Crédito', 600),
    (20, 20, 'Boleto', 0);

-- Inserindo informações na tabela método de pagamento
insert into paymentMethodsPayments(idMethodPaymentsMethod, idMethodPayment)
values
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 16),
    (17, 17),
    (18, 18),
    (19, 19),
    (20, 20);

-- Inserindo informações na tabela entrega
insert into delivery(idOrder, deliveryStatus, trackingCode)
values
    (1, 'Em Trânsito', 'RJ123456789'),
    (2, 'Pendente', 'SP987684835'),
    (3, 'Entregue', 'SP987654321'),
    (4, 'Atrasado', 'BH567890123'),
    (5, 'Em Trânsito', 'PR234567890'),
    (6, 'Pendente', 'SSA983565234'),
    (7, 'Entregue', 'CE678901234'),
    (8, 'Atrasado', 'PE789012345'),
    (9, 'Em Trânsito', 'RS890123456'),
    (10, 'Pendente', 'MAO91295821'),
    (11, 'Entregue', 'MA101010101'),
    (12, 'Atrasado', 'GO121212121'),
    (13, 'Em Trânsito', 'RN131313131'),
    (14, 'Pendente', 'RN987453248'),
    (15, 'Entregue', 'VIX141414141'),
    (16, 'Atrasado', 'MA151515151'),
    (17, 'Em Trânsito', 'SC161616161'),
    (18, 'Pendente', 'PB54354987'),
    (19, 'Entregue', 'PI171717171'),
    (20, 'Atrasado', 'BSB181818181');

    ------------------------------------

-- Após inserir todos os dados, atualizei e reinseri os dados em orders, dessa forma:
insert into orders (idOrderClient, idOrderPayment, orderStatus, orderDescription, taxValue, paymentCash)
values
    (1, 1, 'Confirmado', 'Compra via aplicativo', 10, 0),
    (2, 2, 'Em Processamento', 'Pedido de roupas', 5, 1),
    (3, 3, 'Confirmado', 'Eletrônicos', 15, 0),
    (4, 4, 'Cancelado', 'Brinquedos para crianças', 2, 1),
    (5, 5, 'Em Processamento', 'Itens de mobília', 8, 0),
    (6, 6, 'Confirmado', 'Alimentos e bebidas', 7, 1),
    (7, 7, 'Confirmado', 'Presentes para aniversário', 12, 0),
    (8, 8, 'Cancelado', 'Itens esportivos', 3, 1),
    (9, 9, 'Em Processamento', 'Produtos de beleza', 6, 0),
    (10, 10, 'Confirmado', 'Eletrônicos', 9, 1),
    (11, 11, 'Confirmado', 'Compra via aplicativo', 11, 0),
    (12, 12, 'Em Processamento', 'Roupas e acessórios', 4, 1),
    (13, 13, 'Cancelado', 'Brinquedos educativos', 1, 0),
    (14, 14, 'Confirmado', 'Itens de decoração', 13, 1),
    (15, 15, 'Confirmado', 'Vestido de festa', 20, 0),
    (16, 16, 'Em Processamento', 'Calçados e acessórios', 6, 1),
    (17, 17, 'Confirmado', 'Eletrônicos', 18, 0),
    (18, 18, 'Cancelado', 'Itens para casa', 2, 1),
    (19, 19, 'Confirmado', 'Produtos de cuidado pessoal', 9, 0),
    (20, 20, 'Em Processamento', 'Compra via aplicativo', 5, 1);