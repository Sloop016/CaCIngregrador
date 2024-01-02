DROP DATABASE IF EXISTS integrador_cac;
CREATE DATABASE integrador_cac CHARACTER SET utf8mb4;
use integrador_cac;

create table orador(
id_orador INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nombre varchar(40) not null,
apellido varchar(40) not null,
mail varchar(50) not null check(mail Like '%@%'),
tema varchar(40) not null,
fecha_alta date not null
);

insert into orador values (1,'nombre1','apellido1','prueba1@test.com','tema1','2000-11-11');
insert into orador values (2,'nombre2','apellido2','prueba2@test.com','tema2','2000-11-11');
insert into orador values (3,'nombre3','apellido3','prueba3@test.com','tema1','2000-11-11');
insert into orador values (4,'nombre4','apellido4','prueba4@test.com','tema2','2000-11-11');
insert into orador values (5,'nombre5','apellido5','prueba5@test.com','tema1','2000-11-11');
insert into orador values (6,'nombre6','apellido6','prueba6@test.com','tema2','2000-11-11');
insert into orador values (7,'nombre7','apellido7','prueba7@test.com','tema1','2000-11-11');
insert into orador values (8,'nombre8','apellido8','prueba8@test.com','tema2','2000-11-11');
insert into orador values (9,'nombre9','apellido9','prueba9@test.com','tema1','2000-11-11');
insert into orador values (10,'nombre0','apellido0','prueba0@test.com','tema2','2000-11-11');