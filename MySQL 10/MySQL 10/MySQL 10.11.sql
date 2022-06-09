/*Subconsulta
10.11. Informar cuantos títulos escribió cada autor inclusive aquellos que no lo hayan hecho 
aún. Mostrar nombre y apellido del autor y cantidad. Ordenar por cantidad mayor primero, 
apellido y nombre.*/
use editorial;

select * from autores;
select * from titulo_autor;

select autor_id, count(titulo_id) as cantidad
from titulo_autor 
group by autor_id;

select au.autor_nombre, au.autor_apellido, ifnull(cant_titulos.cantidad, 0) as cantidad 
from autores au 
left join (
	select autor_id, count(titulo_id) as cantidad
	from titulo_autor 
	group by autor_id
) as cant_titulos on au.autor_id = cant_titulos.autor_id
order by cantidad desc, au.autor_apellido, au.autor_nombre;