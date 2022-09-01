create database db_rh;

use db_rh;

create table tb_colaboradores(
id bigint auto_increment,
nome varchar(50),
idade int,
rg varchar(12),
cpf varchar(14),
salario decimal(20, 2),
primary key (id));

insert into tb_colaboradores(nome, idade, rg, cpf, salario) values("Joao", 25, "11.111.111-1", "000.000.000-00", 1000);
insert into tb_colaboradores(nome, idade, rg, cpf, salario) values("Sherlock", 28, "22.222.222-2", "111.111.111-11", 25000.51);
insert into tb_colaboradores(nome, idade, rg, cpf, salario) values("Maria", 40, "33.333.333-3", "222.222.222-22", 30000);
insert into tb_colaboradores(nome, idade, rg, cpf, salario) values("Joao", 17, "44.444.444-4", "333.333.333-33", 700);
insert into tb_colaboradores(nome, idade, rg, cpf, salario) values("Helena", 25, "55.555.555-5", "444.444.444-44", 1000);

select * from tb_colaboradores where salario > 2000;
select * from tb_colaboradores where salario < 2000;

update tb_colaboradores set nome="Phineas" where id=4;
update tb_colaboradores set salario=4500 where id=1