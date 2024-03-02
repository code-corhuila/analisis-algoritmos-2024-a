drop database if exists notas;
create database notas;
use notas; 

create table estudiante(
	id int primary key auto_increment,
	nombre_completo VARCHAR(50),
	programa VARCHAR(50),
	semestre VARCHAR(50),
	estado BIT
);

create table materia(
	id int primary key auto_increment,
	codigo VARCHAR(50),
	nombre VARCHAR(50),
	programa VARCHAR(50),
	semestre VARCHAR(50),
	estado BIT
);

create table matricula(
	id int primary key auto_increment,
	nota DECIMAL(5,2),
	corte VARCHAR(50),
	materia_id INT,
	estudiante_id INT,
	FOREIGN key (materia_id) REFERENCES materia(id),
	FOREIGN key (estudiante_id) REFERENCES estudiante(id)
);