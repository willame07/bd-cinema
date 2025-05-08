create database trabalho_bd;
use trabalho_bd;

create table tbsala(
numero_sala smallint primary key,
descricao_sala varchar(20),
capacidade smallint(200)
);

create table tbsalafilme(
numero_sala smallint,
codigo_filme smallint,
data_exibi date,
horario time,
primary key (numero_sala, codigo_filme),
foreign key (numero_sala) references tbsala(numero_sala),
foreign key (codigo_filme) references tbfilme(codigo_filme)
on delete cascade
on update cascade
);

create table tbfilme(
codigo_filme smallint primary key,
nome_filme varchar(50),
ano smallint,
cenario smallint,
categoria_filme varchar(20),
codigo_diretor smallint,
foreign key (codigo_diretor) references  tbdiretor(codigo_diretor)
on delete cascade
on update cascade
);

create table tbdiretor(
codigo_diretor smallint primary key,
nome_diretor varchar(20)
);

create table tbpremio(
codigo_premio smallint primary key,
nome_premio varchar(20),
ano_premiacao smallint,
codigo_filme smallint,
foreign key (codigo_filme) references tbfilme(codigo_filme)
on delete cascade
on update cascade
);

insert into tbdiretor(codigo_diretor,nome_diretor)
values
(1,'Jorge da Silva'),
(2,'Wilson Texeira'),
(3,'Pedro Paulo Matos');

insert into tbfilme(codigo_filme,categoria_filme)
values
('1','Comedia'),
('2', 'Terror'),
('3', 'Drama');

insert into tbsala(numero_sala,descricao_sala,capacidade)
values
('Sala 1','vip','300'),
('Sala 2','3d','450'),
('Sala 3','normal','800');

insert into tbsalafilme(numero_sala,codigo_filme,data_exibi,horario)
values
(1,1,'2010-01-01','14:00'),
(1,1,'2010-01-02','9:00'),
(2,2,'2010-01-03','16:00'),
(2,2,'2010-01-04','13:30'),
(3,3,'2010-01-05','11:00'),
(3,3,'2010-01-06','18:00');

insert into tbpremio(nome_premio,ano_premiacao,codigo_premio)
values
('Melhor diretor','2008','1'),
('Melhor filme','2015','2'),
('Melhor roteiro','2018','3');

select nome_diretor from tbdiretor;







 