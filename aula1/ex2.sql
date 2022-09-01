create database db_lojinha;

use db_lojinha;

create table tb_produtos(
id bigint auto_increment,
nome varchar(50),
peso decimal(20, 2),
tamanho decimal(20, 2),
cor varchar(50),
valor decimal(20, 2),
primary key (id));

insert into tb_produtos(nome, peso, tamanho, cor, valor) values("capinha", 10, 5, "azul", 50);
insert into tb_produtos(nome, peso, tamanho, cor, valor) values("tablet", 3000, 15, "branco", 900);
insert into tb_produtos(nome, peso, tamanho, cor, valor) values("celular", 1500, 5, "verde", 1500);
insert into tb_produtos(nome, peso, tamanho, cor, valor) values("fone", 5, 10, "preto", 30);
insert into tb_produtos(nome, peso, tamanho, cor, valor) values("roteador", 1800, 15, "roxo", 750);
insert into tb_produtos(nome, peso, tamanho, cor, valor) values("pendrive", 2.5, 3, "rosa", 15);
insert into tb_produtos(nome, peso, tamanho, cor, valor) values("televisao", 50000, 20000, "preto", 75000);
insert into tb_produtos(nome, peso, tamanho, cor, valor) values("adaptador", 2, 3, "branco", 60);

select * from tb_produtos where valor > 500;
select * from tb_produtos where valor < 500;

update tb_produtos set valor=45 where id = 1