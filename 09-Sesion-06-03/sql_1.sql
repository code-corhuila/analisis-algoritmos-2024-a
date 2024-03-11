-- Verifica si existe, y luego la elimina
DROP DATABASE IF EXISTS analisis_sistemas;
-- Crea la base de datos
CREATE DATABASE analisis_sistemas;

-- Usa la base de datos
USE analisis_sistemas;

CREATE TABLE estudiante(
	id INT PRIMARY KEY AUTO_INCREMENT,
	codigo VARCHAR(50),
	nombre_completo VARCHAR(100),
	programa VARCHAR(100)
);

CREATE TABLE materia(
	id INT PRIMARY KEY AUTO_INCREMENT,
	codigo VARCHAR(50),
	nombre VARCHAR(100),
	programa VARCHAR(100),
	semestre VARCHAR(100)
);

CREATE TABLE matricula(
	id INT PRIMARY KEY AUTO_INCREMENT,
	corte ENUM('1','2','3'),
	nombre VARCHAR(100),
	programa ENUM('Sistemas','Industrial','Ambiental','Mecatronica','Renovable'),
	semestre ENUM('1','2','3','4','5','6','7','8','9','10'),
	estudiante_id INT,
	materia_id INT,	
	CONSTRAINT fk_matricula_estudiante FOREIGN KEY (estudiante_id) REFERENCES estudiante(id),
	CONSTRAINT fk_matricula_materia FOREIGN KEY (materia_id) REFERENCES materia(id)
);