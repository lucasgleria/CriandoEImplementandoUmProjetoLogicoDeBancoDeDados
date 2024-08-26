### Projeto posterior a [Construa Um Projeto Logico De Banco De Dados Do Zero](https://github.com/lucasgleria/ConstruaUmProjetoLogicoDeBancoDeDadosDoZero/blob/main/readme.md)

# Desafio de Projeto DIO
## Criando e Implementando um Projeto Lógico de Banco de Dados

### Referente a [desafio-sql](https://github.com/lucasgleria/CriandoEImplementandoUmProjetoLogicoDeBancoDeDados/tree/main/desafio-sql)
<h4><b> Desafio proposto: </b></h4>
Neste desafio, você terá a oportunidade de criar seu primeiro projeto lógico de banco de dados utilizando o MySQL. O objetivo é replicar a modelagem de um banco de dados para um cenário de e-commerce. Prepare-se para aplicar seus conhecimentos em modelagem de banco de dados e traduzir os requisitos do cenário em uma estrutura lógica coerente usando o MySQL.

##
<b>Obrigações:</b>

+ Recuperações simples com SELECT Statement
+ Filtros com WHERE Statement
+ Crie expressões para gerar atributos derivados
+ Defina ordenações dos dados com ORDER BY
+ Condições de filtros aos grupos – HAVING Statement
+ Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados


<b>Diretrizes:</b>


- Não há um mínimo de queries a serem realizadas;
- Os tópicos supracitados devem estar presentes nas queries;
- Elabore perguntas que podem ser respondidas pelas consultas;
- As cláusulas podem estar presentes em mais de uma query;


<b>Objetivo:</b>


“Refine o modelo apresentado acrescentando os seguintes pontos”

* Cliente PJ e PF – Uma conta pode ser PJ ou PF, mas não pode ter as duas informações;
* Pagamento – Pode ter cadastrado mais de uma forma de pagamento;
* Entrega – Possui status e código de rastreio;
* Algumas das perguntas que podes fazer para embasar as queries SQL:


<b>Perguntas:</b>


Quantos pedidos foram feitos por cada cliente? <br>
Algum vendedor também é fornecedor? <br>
Relação de produtos fornecedores e estoques; <br>
Relação de nomes dos fornecedores e nomes dos produtos; <br>


<b>Minhas Perguntas:</b>


Por qual cartão foram efetuados os pagamentos em cartao? <br>
Qual a categoria de produtos mais vendida? <br>
Quais produtos estão disponíveis? <br>
Qual a quantidade dispnível em estoque? <br>


##
### Separei o desafio em 3 arquivos diferentes por fins visuais.
<h4>O que encontrarei no <b>create.sql</b>?</h4>

* Todo o script em [create.sql](https://github.com/lucasgleria/CriandoEImplementandoUmProjetoLogicoDeBancoDeDados/blob/main/desafio-sql/create.sql) é desenvolvido com o comando nativo 'create' e alguns 'alter', no início criando o banco de dados e após isso todos os schemas seguintes, com suas propriedades, seguindo as instruções da orientadora.
    * Fiz modificações e melhorias no script por minha conta. 

<h4>O que encontrarei no <b>insert.sql</b>?</h4>

* Todo o script em [insert.sql](https://github.com/lucasgleria/CriandoEImplementandoUmProjetoLogicoDeBancoDeDados/blob/main/desafio-sql/insert.sql) é desenvolvido com o comando nativo 'insert into', inserindo em todos os schemas dados conforme cada qual, com suas propriedades, seguindo as instruções da orientadora.
    * Fiz modificações e melhorias no script por minha conta.
    <br>
    <b>OBS:</b> Há um insert into no fim do script referente ao schema 'orders', para atualizar o orders anterior, devido alguns conflítuos e problemas com chaves estrangeiras, essa foi a solução que encontrei para que todas as queries funcionem

<h4>O que encontrarei no <b>queries.sql</b>?</h4>

* Todo o script em [queries.sql](https://github.com/lucasgleria/CriandoEImplementandoUmProjetoLogicoDeBancoDeDados/blob/main/desafio-sql/queries.sql) é desenvolvido com o comando nativo 'select', fazendo todas as buscas nos schemas conforme suas propriedades, seguindo as instruções da orientadora
    * Fiz modificações e melhorias no script por minha conta.
