USE POKEMON_GO;

/*Ejercicio 1.- Muestra el nombre de todos los Pokemon que sean de tipo tierra.*/

select nombre
from pokemon
where tipo like "TIERRA";

/*Ejercicio 2.- Muestra el ID de los Pokemon de nombre Carmen o de altura mayor que 2*/

select id
from pokemon
where nombre like "CARMEN" or altura>2;

/*Ejercicio 3.- Muestra el tipo de los Pokemon con edad distinta a 32 
				sin que se repitan datos en el resultado.*/

select distinct tipo
from pokemon
where edad <> 32;

/*Ejercicio 4.- Muestra el nombre y tipo de los Pokemon que hayan nacido 
				en el año 2000 o 2001 ordenador alfabéticamente por el nombre.*/

select nombre, tipo
from pokemon
where year(fecha_nac)=2000 or year(fecha_nac)=2001
order by nombre asc;

/*Ejercicio 5.- Muestra el ID de los Pokemon que su nombre comience por la letra "C" 
				y contengan la letra "A" ordenador por el nombre del Pokemon.*/



/*Ejercicio 6.- Muestra todos pokemon que hayan nacido en el mes de octubre o su edad esté entre 29 y 35 años (ambos incluidos).*/

/*Ejercicio 7.- Muestra El ID y la altura de los 2 Pokemon de mayor altura que en su nombre no contengan la letra "E" ordenados por la altura de mayor a menor.*/

/*Ejercicio 8.- Muestra todos los datos de los Pokemon que sean de tipo PLANTA o ROCA, tengan una altura superior a 1.50 y su edad sea distina a 14.*/

/*Ejercicio 9.- Muestra los datos de los 3 Pokemon de menor edad que su nombre tenga una longitud exacta de 6 caracteres. Ordena el resultado de menor a mayor.*/

/*Ejercicio 10.- Muestra el ID, Nombre y Edad de los Pokemon con un nombre que comience por la letra J, contenga una letra "M" y termine por la letra "A", o que su edad se muestre con un solo caracter. Ordena los resultados alfabéticamente por el nombre del Pokemon.*/