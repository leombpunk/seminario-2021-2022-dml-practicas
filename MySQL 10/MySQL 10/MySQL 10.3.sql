/*Subconsultas
10.3. Informar los autores que han hecho algún título juntos. Mostrar los nombres y apellidos 
de a pares, ósea en una misma fila apellido y nombre de un autor seguido de apellido y nombre 
del otro autor. Ordenar por apellido y nombre de un autor seguido de apellido y nombre del 
otro autor.*/
use editorial;

select * from titulo_autor;

select au.autor_nombre, ti.titulo
from autores au
inner join titulo_autor ta on au.autor_id = ta.autor_id
inner join titulos ti on ta.titulo_id = ti.titulo_id
order by ti.titulo asc;

select au.autor_apellido, au.autor_nombre, au2.autor_apellido, au2.autor_nombre 
from autores au
inner join titulo_autor ta on au.autor_id = ta.autor_id
	and ta.autor_orden = 1
inner join (
	select ta.titulo_id, au.autor_id, au.autor_apellido, au.autor_nombre
	from titulo_autor ta
	inner join autores au on ta.autor_id = au.autor_id
	where ta.autor_orden = 2
    ) au2 on ta.titulo_id = au2.titulo_id
order by au.autor_apellido, au.autor_nombre, au2.autor_apellido, au2.autor_nombre ;
