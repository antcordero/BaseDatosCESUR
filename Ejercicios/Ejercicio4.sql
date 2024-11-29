create database examenPrueba;
use examenPrueba;

create table Alumnos (
DNI varchar(11),
Nombre varchar(10),
Apellido varchar(10),
Edad int,
Ciudad varchar(10)
);

create table Productos (
DNI varchar(11),
NumProductos int
);

INSERT INTO Alumnos VALUES
('47657450-L','Jon','Zamora','29','Irun'),
('47657450-L','Jon','Zamora','29','Madrid'),
('42000201-T','Daniel','García','31','Cancun'),
('32120101-F','Fernando','López','19','Madrid'),
('10000000-R','Ramiro','Ramiro','21','Bilbao'),
('10000000-R','Ramiro','Ramiro','21','Barcelona'),
('44566812-M','Marius','Mario','20','Irun');

INSERT INTO Productos VALUES
('47657450-L','4'),
('44566812-M','1'),
('42000201-T','0'),
('32120101-F','0'),
('10000000-R','2');

/*1*/

select * 
from alumnos as a inner join productos as p on p.dni=a.dni
order by a.nombre;

/*2*/

select avg(a.edad) as MediaEdad
from alumnos as a;

/*3*/

select distinct *
from alumnos as a 
where a.nombre like "j%" and a.apellido like "%a%";

/*4*/

select distinct *
from alumnos as a 
where a.ciudad in ("Irun", "Madrid", "Bilbao");

/*5*/

select distinct a.nombre, a.apellido, a.edad
from alumnos as a 
order by a.edad desc
limit 3;

/*6*/

select count(distinct a.dni) as NºAlumnos
from alumnos as a;

/*7*/

select distinct a.nombre, p.numproductos
from alumnos as a inner join productos as p on a.dni=p.dni
where p.numproductos > 0;

/*8*/

select a.*
from alumnos as a 
where a.edad between 23 and 28;

/*9*/

select distinct a.dni
from alumnos as a 
where a.nombre like a.apellido;

/*10*/

select max(p.numproductos) as Nº_Máximo, min(p.numproductos) as Nº_Mínimo
from productos as p;
