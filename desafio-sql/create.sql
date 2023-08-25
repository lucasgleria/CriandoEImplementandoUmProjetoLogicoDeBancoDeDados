    -- Criando o banco de dados ecommerce
    create database ecommerce;
    use ecommerce;

    -- Criando a tabela clientes
    create table clients (
        idClient int auto_increment primary key,
        Fname varchar(10),
        Minit char(3),
        Lname varchar(20),
        CPF char(11),
        CNPJ char(15),
        Address varchar(30),
        clientType enum('PF', 'PJ') not null,
        constraint unique_cpf_client unique (CPF),
        constraint unique_cnpj_client unique (CNPJ)
    );
    alter table clients auto_increment=1;

    -- Criando a tabela produtos
    create table product (
        idProduct int auto_increment primary key,
        Pname varchar(30) not null,
        ClassificationKids boolean default false,
        Category enum('Eletrônico', 'Vestimenta', 'Brinquedos', 'Alimentos', 'Móveis') not null,
        Avaliação float default 0,
        size varchar(10)
    );
    alter table product auto_increment=1;

    -- Criando a tabela fornecedor
    create table supplier (
        idSupplier int auto_increment primary key,
        socialName varchar(255) not null,
        CNPJ char(15) not null,
        contact char(11) not null,
        constraint unique_supplier unique (CNPJ)
    );
    alter table supplier auto_increment=1;

    -- Criando a tabela vendedor
    create table seller (
        idSeller int auto_increment primary key,
        socialName varchar(255) not null,
        AbstName varchar(255),
        CNPJ char(15) not null,
        CPF char(11) not null,
        location varchar(255),
        contact char(11) not null,
        constraint unique_cnpj_seller unique (CNPJ),
        constraint unique_cpf_seller unique (CPF)
    );
    alter table seller auto_increment=1;

    -- Criando a tabela pagamentos
    create table payments (
        idPayment int auto_increment primary key,
        idPaymentClient int,
        typePayment enum('Boleto', 'Cartão de Crédito', 'Dois Cartões'),
        limitAvaliable float,
        constraint fk_client_payment foreign key (idPaymentClient) references clients(idClient)
    );
    alter table payments auto_increment=1;


    -- Criando a tabela pedidos
    create table orders (
        idOrder int auto_increment primary key,
        idOrderClient int,
        idOrderPayment int,
        orderStatus enum('Cancelado', 'Confirmado', 'Em Processamento') default 'Em Processamento', 
        orderDescription varchar(255),
        taxValue float default 0,
        paymentCash boolean default false,
        constraint fk_orders_client foreign key (idOrderClient) references clients(idClient),
        constraint fk_orders_payment foreign key (idOrderPayment) references payments(idPayment)
	);
    alter table orders auto_increment=1;


    -- Criando a tabela Métodos de Pagamento
    create table paymentMethodsPayments(
        idPaymentMethod int auto_increment primary key,
        idMethodPaymentsMethod int,
        idMethodPayment int,
        constraint fk_pmp_payment foreign key (idMethodPayment) references payments(idPayment)
    );
    alter table paymentMethodsPayments auto_increment=1;

    -- Criando a tabela de Entrega
    create table delivery(
        idDelivery int auto_increment primary key,
        idOrder int,
        deliveryStatus enum('Em Trânsito', 'Entregue', 'Atrasado', 'Pendente') default 'Pendente',
        trackingCode varchar(30),
        constraint fk_delivery_order foreign key (idOrder) references orders(idOrder)
    );
    alter table delivery auto_increment=1;


    -- Criando a tabela de Estoque de Produtos
    create table productStorage(
        idProductStorage int auto_increment primary key,
        storageLocation varchar(255),
        quantity int default 0    
    );
    alter table productStorage auto_increment=1;


    -- Criando a tavela de Produtos do Vendendor
    create table productSeller(
        idPSeller int auto_increment,
        idProduct int,
        prodQuantity int default 1,
        primary key (idPSeller, idProduct),
        constraint fk_product_seller foreign key (idPSeller) references seller(idSeller),
        constraint fk_product_product foreign key (idProduct) references product(idProduct) 
    );
    alter table productSeller auto_increment=1;

    -- Criando a tabela de Pedido de Produtos
    create table productOrder(
        idPOproduct int,
        idPOorder int auto_increment,
        poQuantity int default 1,
        poStatus enum('Disponível', 'Sem Estoque') default 'Disponível',
        primary key (idPOproduct, idPOorder),
        constraint fk_product_order_product foreign key (idPOproduct) references product(idProduct),
        constraint fk_product_order_order foreign key (idPOorder) references orders(idOrder) 
    );
    alter table productOrder auto_increment=1;

    -- Criando a tabela de Localidade de Armazenamento
    create table storageLocation(
        idLproduct int,
        idLstorage int auto_increment,
        location varchar(255) not null,
        primary key (idLproduct, idLstorage),
        constraint fk_storage_location_product foreign key (idLproduct) references product(idProduct),
        constraint fk_storage_location_storage foreign key (idLstorage) references productStorage(idProductStorage)
    );
    alter table storageLocation auto_increment=1;

    -- Criando a tabela de Produtos do Fornecedor
    create table productSupplier(
        idPsSupplier int auto_increment,
        idPsProduct int,
        quantity int not null,
        primary key (idPsSupplier, idPsProduct),
        constraint fk_product_supplier_supplier foreign key (idPsSupplier) references supplier(idSupplier),
        constraint fk_product_supplier_product foreign key (idPsProduct) references product(idProduct)
    );
    alter table productSupplier auto_increment=1;