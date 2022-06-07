/*Subconsultas
10.5. Informar cuantos títulos tiene cada autor. Mostrar código de autor, nombre, apellido y 
cantidad de títulos.*/
use editorial;

select au.autor_id, autor_nombre, autor_apellido, libros.cantidad 
from autores au
inner join (
	select autor_id, count(titulo_id) as cantidad
    from titulo_autor
    group by titulo_id
) as libros on au.autor_id = libros.autor_id;