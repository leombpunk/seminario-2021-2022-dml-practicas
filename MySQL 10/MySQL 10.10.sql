/*Subconsulta
10.10. Informar los autores que hayan escrito varios géneros de títulos. Mostrar nombre y 
cantidad de géneros ordenados por esta última columna empezando por el mayor.*/
use editorial;

select * from autores; 
select * from titulos; ##agrupar por genero
select * from titulo_autor; ##enlazar titulos con autores

select ta.autor_id, ta.titulo_id, count(ti.genero) as cantidad_generos
from titulo_autor ta
inner join titulos ti on ta.titulo_id = ti.titulo_id 
group by ta.autor_id, ti.genero; ##cantidad de generos por autor

select au.autor_nombre, cant_generos.cantidad_generos 
from autores au
inner join (
	select ta.autor_id, ta.titulo_id, count(ti.genero) as cantidad_generos
	from titulo_autor ta
	inner join titulos ti on ta.titulo_id = ti.titulo_id 
	group by ta.autor_id, ti.genero
) as cant_generos on au.autor_id = cant_generos.autor_id
where cant_generos.cantidad_generos >= 2
order by cant_generos.cantidad_generos desc;

