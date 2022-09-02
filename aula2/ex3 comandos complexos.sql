create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment,
pedaços int,
borda varchar(100),
primary key (id)
);
insert into tb_categorias(pedaços, borda)values(8, "catupiry");
insert into tb_categorias(pedaços, borda)values(8, "vazia");
insert into tb_categorias(pedaços, borda)values(6, "catupiry");
insert into tb_categorias(pedaços, borda)values(6, "vazia");
insert into tb_categorias(pedaços, borda)values(4, "catupiry");
insert into tb_categorias(pedaços, borda)values(4, "vazia");

create table tb_pizzas(
id bigint auto_increment,
nome varchar(100),
valor decimal(5, 2),
descricao varchar(100),
tamanho varchar(100),
categorias_id bigint,
primary key (id),
foreign key(categorias_id) references tb_categorias(id)
);
insert into tb_pizzas(nome, valor, descricao, tamanho, categorias_id)values("picante", 50, "pimentas variadas", "pequena", 6);
insert into tb_pizzas(nome, valor, descricao, tamanho, categorias_id)values("mistura maluca", 175, "carnes variadas", "média", 3);
insert into tb_pizzas(nome, valor, descricao, tamanho, categorias_id)values("campping", 75, "pizza com marshmellows", "grande", 2);
insert into tb_pizzas(nome, valor, descricao, tamanho, categorias_id)values("porquinho", 90, "bacon, linguiça", "grande", 1);
insert into tb_pizzas(nome, valor, descricao, tamanho, categorias_id)values("morangueiro", 60, "morango com brigadeiro", "media", 4);
insert into tb_pizzas(nome, valor, descricao, tamanho, categorias_id)values("x-pizza", 25, "alface, tomate, hambuguer", "pequena", 5);
insert into tb_pizzas(nome, valor, descricao, tamanho, categorias_id)values("pizza de mel", 30, "pão de mel", "pequena", 6);
insert into tb_pizzas(nome, valor, descricao, tamanho, categorias_id)values("coco", 42, "bolo de coco", "media", 4);

select * from tb_pizzas where valor > 45;

select *from tb_pizzas where valor between 50 and 100;

select *from tb_pizzas where nome like "%m%";

select nome, valor, descricao, tamanho, categorias_id, tb_categorias.pedaços from tb_pizzas 
inner join tb_categorias on tb_categorias.id = tb_pizzas.categorias_id;

select nome, valor, descricao, tamanho, tb_categorias.borda, tb_categorias.pedaços from tb_pizzas 
inner join tb_categorias on tb_categorias.id = tb_pizzas.categorias_id where categorias_id = 4;