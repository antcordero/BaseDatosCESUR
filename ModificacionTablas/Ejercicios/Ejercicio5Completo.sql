create database peliculasEj5Mod2;
use peliculasEj5Mod2;

/*CREAR TABLA*/
/*
	- La columna ID debe ser la clave primaria de la tabla
	- La columna ID debe ser un valor entero e incrementar de forma automática
	- La columna Nombre debe tener contenido de caracteres (máximo 15 caracteres)
	- La columna Duración debe ser un valor entero y estar entre 50 y 200
		*Los datos de la duración representará a los minutos de duración de la pelicula
	- La columna Director debe tener contenido de caracteres (máximo 20 caracteres)
	- La columna Genero podrá tener valores de Acción, Terror, Aventura o comedia
	- La columna Puntuación deberá se un decimal (máximo 1 decimal)
	- La columna Fecha será de tipo fecha
*/
create table peliculas(
			ID int primary key,
			NOMBRE varchar(100) not null,
            DURACION int not null,
            DIRECTOR varchar(100) not null,
            GENERO varchar(100) not null,
            PUNTUACION decimal(2,1) not null,
            FECHA;
) auto_increment = 1;

/*Insertar datos*/
insert into peliculas (NOMBRE, DURACION, DIRECTOR, GENERO, PUNTUACION, FECHA) values
('A todo gas',120,'Rob Cohen','accion',6.3,'2001-10-12'),
('Hereditary',137,'Ary Aster','terror',9.1,'2018-02-22'),
('Avatar',154,'James Cameron','aventura',7.8,'2010-12-04'),
('Silent Hill',180,'Chirstopher Gans','terror',4.4,'2003-01-01'),
('Project X',98,'Nima Nourizadeh','comedia',5.8,'2012-06-16'),
('Anabelle',105,'Jhon R.Leonetti','terror',7.1,'2006-09-10');

/*Ejercicio 1.- Modifica la duración de las peliculas para que se muestre el contenido en horas en vez de en minutos*/
/*Ejercicio 2.- Modifica la Puntuación para que se muestren 2 decimales en vez de 1*/
/*Ejercicio 3.- Modifica el número de caracteres permitidos en Nombre para que admita 25 caracteres*/
/*Ejercicio 4.- Añade una nueva fila a la tabla con los datos de la película "La cabaña en el bosque"*/
/*Ejercicio 5.- Modifica la columna Puntación para que se llame Puntos*/
/*Ejercicio 6.- Añade una nueva columna Crítica que admita los valores (MALA, REGULAR, BUENA, MUY BUENA)*/
/*Ejercicio 7.- Añade valores a la columa Crítica siguiendo los siguientes criterios.
- Si la pelicula tiene menos o igual a un 5 en la Puntuación, añade el valor MALA
- Si la pelicula tiene más de un 5 y menos de un 6.5 en la Puntuación, añade el valor REGULAR
- Si la pelicula tiene más o igual a un 6.5 y menos de un 8.5 en la Puntuación, añade el valor BUENA
- Si la pelicula tiene más o igual a un 8.5 en la Puntuación, añade el valor MUY BUENA*/

/*Ejercicio 8.- Elimina las filas de las películas con ID superior a 6*/
/*Ejercicio 9.- Elimina las filas que sean del año 2010*/
/*Ejercicio 10.- Elimina las filas de las películas dirigidas por Ary Aster y tengan una duración menor a 3 horas*/
/*Ejercicio 11.- Elimina las filas de las películas que contengan una X en su nombre.*/
/*Ejercicio 12.- Elimina las filas de las películas del mes de enero, y que la crítica sea distina a BUENA o MUY BUENA.*/