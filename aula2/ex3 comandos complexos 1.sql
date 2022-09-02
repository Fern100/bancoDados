create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
nomeclasse varchar(255),
forca int,
velocidade int,
ataque int,
defesa int,
primary key (id)
);

insert into tb_classes(nomeclasse, forca, velocidade, ataque, defesa) values("mago", 2, 4, 1200, 2000);
insert into tb_classes(nomeclasse, forca, velocidade, ataque, defesa) values("monge", 5, 8, 1500, 1800);
insert into tb_classes(nomeclasse, forca, velocidade, ataque, defesa) values("bardo", 4, 4, 1000, 1200);
insert into tb_classes(nomeclasse, forca, velocidade, ataque, defesa) values("guerreiro", 10, 3, 3000, 1000);
insert into tb_classes(nomeclasse, forca, velocidade, ataque, defesa) values("anão", 8, 4, 2500, 1500);

select * from tb_classes;

create table tb_personagens(
id bigint auto_increment,
nome varchar(255),
cabelo varchar(255),
roupa varchar(255),
pele varchar(255),
classes_id bigint,
primary key(id),
foreign key(classes_id) 
references tb_classes(id)
);

insert into tb_personagens(nome, cabelo, roupa, pele, classes_id)values("Carina", "azul e preto", "roupa ninja", "purpura", 2);
insert into tb_personagens(nome, cabelo, roupa, pele, classes_id)values("Dante", "loiro", "capa branca", "branco", 1);
insert into tb_personagens(nome, cabelo, roupa, pele, classes_id)values("Arthur", "marron", "roupa de motoqueiro", "moreno", 5);
insert into tb_personagens(nome, cabelo, roupa, pele, classes_id)values("Porteiro", "preto", "roupas de campones", "cinza", 3);
insert into tb_personagens(nome, cabelo, roupa, pele, classes_id)values("Camila", "roxo", "trapos velhos", "azul", 4);
insert into tb_personagens(nome, cabelo, roupa, pele, classes_id)values("Josue", "verde", "roupas de rei", "preta", 5);
insert into tb_personagens(nome, cabelo, roupa, pele, classes_id)values("Mariano", "vermelho", "terno", "roxo", 3);
insert into tb_personagens(nome, cabelo, roupa, pele, classes_id)values("Mirabel", "branco", "vestido", "laranja", 2);

select * from tb_personagens where nome like "%C%";

select nome, tb_classes.ataque, tb_classes.nomeclasse as "nome da classe" from tb_personagens inner join tb_classes
on tb_classes.id = tb_personagens.classes_id where ataque>2000;

select nome, tb_classes.defesa, tb_classes.nomeclasse as "nome da classe" from tb_personagens inner join tb_classes
on tb_classes.id = tb_personagens.classes_id where defesa between 1000 and 2000;

select nome, cabelo, roupa, pele, tb_classes.nomeclasse from tb_personagens 
inner join tb_classes on tb_classes.id = tb_personagens.classes_id;

select nome, tb_classes.nomeclasse as "nome da classe" from tb_personagens inner join tb_classes
on tb_classes.id = tb_personagens.classes_id where classes_id = 2;

select nome, tb_classes.nomeclasse as "nome da classe" from tb_personagens inner join tb_classes
on tb_classes.id = tb_personagens.classes_id where classes_id = 4;