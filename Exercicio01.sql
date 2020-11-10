CREATE DATABASE Exercicio1
GO
USE Exercicio1


CREATE TABLE Aluno(
RA INT NOT NULL UNIQUE,
Nome varchar(50) NOT NULL,
Sobrenome varchar(50) NOT NULL,
Rua varchar(50) NOT NULL,
Numero INT NOT NULL,
Bairro varchar(50) NOT NULL,
CEP int not null,
Telefone varchar(8)
primary key(RA)
)

GO
drop table Aluno
create table Cursos(
Codigo int not null identity unique,
Nome varchar(50) NOT NULL,
CargaHoraria int not null,
Turno varchar(10)
primary key(Codigo)
)
GO

create table Disciplinas(
Codigo int not null identity unique,
Nome varchar(50) NOT NULL,
CargaHoraria int not null,
Turno varchar(10),
Semestre int not null
primary key(Codigo)
)

Insert into Aluno VALUES
(12345,'Jos�', 'Silva', 'Almirante Noronha', 236,	'Jardim S�o Paulo',	1589000,	69875287),
(12346,	'Ana',	'Maria Bastos',	'Anhaia',	1568,	'Barra Funda',	3569000,	25698526),
(12347,	'Mario',	'Santos',	'XV de Novembro',	1841,	'Centro', 1020030, null),
(12348	,'Marcia',	'Neves',	'Volunt�rios da Patria',	225,	'Santana',	2785090,	78964152)

SELECT * FROM Aluno

insert into Cursos VALUES
('Inform�tica',	2800,	'Tarde'),
('Inform�tica',	2800,	'Noite'),
('Log�stica',	2650,	'Tarde'),
('Log�stica',	2650,	'Noite'),
('Pl�sticos',	2500,	'Tarde'),
('Pl�sticos',	2500,	'Noite')

select * from Cursos

insert into Disciplinas values
(	'Inform�tica',	4,	'Tarde',	1),
(	'Inform�tica', 4,	'Noite',	1),
(	'Quimica', 4,	'Tarde',	1),
(	'Quimica',	4,	'Noite',	1),
(	'Banco de Dados I',	2,	'Tarde',	3),
(	'Banco de Dados I',	2,	'Noite',	3),
(	'Estrutura de Dados',	4,	'Tarde',	4),
(	'Estrutura de Dados',	4,	'Noite',	4)





select Nome + ' ' + Sobrenome as Nome_Completo from Aluno

select Rua + ' ' + CAST(Numero As varchar) + ' ' + Bairro + ' ' + CAST(CEP as varchar) as Endere�o from Aluno

select Telefone from Aluno where RA = 12348

select Nome, Turno from Cursos where CargaHoraria = 2800

select Semestre from Disciplinas where Nome = 'Banco de Dados I' and Turno = 'Noite'











