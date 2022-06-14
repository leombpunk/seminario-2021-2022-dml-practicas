/*Serie libre
11.4. Informar los títulos que hayan sido “Best sellers” (más vendidos) por cada editorial.
Puede haber más de un título por editorial. Mostrar nombre de la editorial, nombre del título y 
nombre y apellido el autor principal. Ordenar por nombre de editorial y título. */
use editorial;

select * from titulos;
select * from autores;
select * from titulo_autor;
select * from ventas;

## venta total por titulo
select titulo_id, sum(cantidad) total
from ventas 
group by titulo_id;

## ventas totales por titulo agrupado por editorial 
select e.editorial_nombre, t
from editoriales e
inner join titulos t on e.editorial_id = t.editorial_id
inner join (
	select titulo_id, sum(cantidad) total
	from ventas v
    
	group by titulo_id
) ventas on t.titulo_id = ventas.titulo_id
group by e.editorial_nombre;

## autor principal y titulo escrito
select a.autor_id, a.autor_nombre, a.autor_apellido, ta.titulo_id 
from autores a 
inner join titulo_autor ta on a.autor_id = ta.autor_id 
	and autor_orden = 1;
    
## titulos y editoriales
select t.titulo_id, t.titulo, e.editorial_id, e.editorial_nombre 
from titulos t
inner join editoriales e on t.editorial_id = e.editorial_id;

## consulta final
select ti_ed.editorial_nombre, ti_ed.titulo, au_ti.autor_nombre, au_ti.autor_apellido
from (
	select t.titulo_id, t.titulo, e.editorial_id, e.editorial_nombre 
	from titulos t
	inner join editoriales e on t.editorial_id = e.editorial_id
) ti_ed
inner join (
	select a.autor_id, a.autor_nombre, a.autor_apellido, ta.titulo_id 
	from autores a 
	inner join titulo_autor ta on a.autor_id = ta.autor_id 
		and autor_orden = 1
) au_ti on ti_ed.titulo_id = au_ti.titulo_id
order by ti_ed.editorial_nombre, ti_ed.titulo;