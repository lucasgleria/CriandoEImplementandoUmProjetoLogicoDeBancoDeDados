-- Respondendo as perguntas!

-- Quantos pedidos foram feitos por cada cliente?
select c.idClient, c.Fname, c.Minit, c.Lname, c.CPF, c.CNPJ, c.Address, c.clientType,
    count(o.idOrder) as TotalOrders from clients c
    left join orders o on c.idClient = o.idOrderClient
    group by c.idClient, c.Fname, c.Minit, c.Lname, c.CPF, c.CNPJ, c.Address, c.clientType
    order by c.idClient;

-- Algum vendedor também é fornecedor?
select  s.idSeller,
    s.socialName as SellerSocialName,
    s.CNPJ as SellerCNPJ,
    s.CPF as SellerCPF,
        p.idSupplier,
    p.socialName as SupplierSocialName from seller s
    left join supplier p on s.CNPJ = p.CNPJ where p.idSupplier is not null
    order by s.idSeller;

-- Qual a relação de produtos, fornecedores e estoques;
select  ps.idPsProduct,
    p.Pname as ProductName,
        s.idSupplier,
    s.socialName as SupplierSocialName,
    ps.quantity as QuantityInStock from productSupplier ps
    inner join product p on ps.idPsProduct = p.idProduct
    inner join supplier s on ps.idPsSupplier = s.idSupplier
    order by ps.idPsProduct;

-- Qual a relação de nomes dos fornecedores e nomes dos produtos;
select s.socialName as SupplierName, p.Pname as ProductName from productSupplier ps
    inner join product p on ps.idPsProduct = p.idProduct
    inner join supplier s on ps.idPsSupplier = s.idSupplier
    order by s.socialName, p.Pname;

-- Respondendo MINHAS perguntas:

-- A forma de pagamento escolhida foi Cartão de Crédito?
select  p.idPayment,
    c.Fname as ClientFirstName,
    c.Lname as ClientLastName,
    p.typePayment as PaymentType,
        pm.idPaymentMethod,
        pm.idMethodPayment from payments p
    inner join clients c on p.idPaymentClient = c.idClient
    inner join paymentMethodsPayments pm on p.idPayment = pm.idMethodPayment
    where p.typePayment = 'Cartão de Crédito'
    order by p.idPayment;

-- Qual a forma de Pagamento escolhida?
select  o.idOrder,
    c.Fname as ClientFirstName,
    c.Lname as ClientLastName,
    p.typePayment as PaymentType from orders o
    inner join clients c on o.idOrderClient = c.idClient
    inner join payments p on o.idOrderPayment = p.idPayment
    order by o.idOrder;

-- Qual a quantidade por categoria mais escolhida
select p.Category,
    count(po.idPOproduct) as TotalSold from productOrder po
    inner join product p on po.idPOproduct = p.idProduct
    group by p.Category
    order by TotalSold DESC
    LIMIT 1;

-- Qual a quantidade por categoria?
select p.Category,
    count(po.idPOproduct) as TotalSold from productOrder po
    inner join product p on po.idPOproduct = p.idProduct
    group by p.Category
    order by TotalSold DESC;

-- Quais produtos estão disponíveis?
select  p.idProduct,
    p.Pname as ProductName from product p
    inner join productOrder po on p.idProduct = po.idPOproduct
    where po.poStatus = 'Disponível'
    group by p.idProduct
    order by p.idProduct;

-- Qual a quantidade de produtos?
select  p.idProduct,
    p.Pname as ProductName,
    ps.quantity as QuantityInStock from product p
    inner join productStorage ps on p.idProduct = ps.idProductStorage
    order by p.idProduct;

    -- -------------


-- + Recuperações simples com SELECT Statement
-- Recuperar todos os nomes e CPFs dos clientes
select Fname, Lname, CPF from clients;

-- Recuperar os nomes dos produtos e suas avaliações
select Pname, Avaliação from product;

-- + Filtros com WHERE Statement

-- Recuperar os clientes que são pessoas físicas (PF)
select Fname, Lname from clients where clientType = 'PF';

-- Recuperar os produtos que têm avaliação maior ou igual a 4.5
select Pname, Avaliação from product where Avaliação >= 4.5;

-- + Crie expressões para gerar atributos derivados

-- Recuperar o nome completo dos clientes
select CONCAT(Fname, ' ', Minit, ' ', Lname) as FullName from clients;

-- + Defina ordenações dos dados com ORDER BY

-- Recuperar os produtos ordenados por avaliação de forma decrescente
select Pname, Avaliação from product order by Avaliação DESC;

-- Recuperar os clientes ordenados por sobrenome e depois por nome
select Fname, Lname from clients order by Lname, Fname;

-- + Condições de filtros aos grupos – HAVING Statement

-- Recuperar categorias de produtos que têm mais de 3 produtos vendidos
select p.Category, COUNT(po.idPOproduct) as TotalSold from productOrder po
    inner join product p on po.idPOproduct = p.idProduct
    group by p.Category
    having TotalSold > 3;

-- Recuperar fornecedores que têm pelo menos 2 produtos em estoque
select s.socialName as SupplierName, COUNT(ps.idPsProduct) as ProductsInStock from productSupplier ps
    inner join supplier s on ps.idPsSupplier = s.idSupplier
    group by s.socialName
    having ProductsInStock <= 10;

-- + Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados

-- Recuperar os produtos e seus fornecedores
select p.Pname as ProductName, s.socialName as SupplierName from productSupplier ps
    inner join product p on ps.idPsProduct = p.idProduct
    inner join supplier s on ps.idPsSupplier = s.idSupplier;

-- Recuperar os pedidos, clientes e seus pagamentos
select o.idOrder, c.Fname as ClientFirstName, c.Lname as ClientLastName, p.typePayment as PaymentType from orders o
    inner join clients c on o.idOrderClient = c.idClient
    inner join payments p on o.idOrderPayment = p.idPayment;
