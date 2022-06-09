/*Subconsultas
10.1. Informar los títulos que no hayan tenido ventas entre el año 2011 y 2013 exceptuando 
los que se hayan publicado posteriormente. Mostrar título, y nombre de editorial. Resolver este 
problema dos veces usando In y Exists*/
use editorial;

select * from ventas v
where year(v.fecha_orden) between 2011 and 2013
order by v.titulo_id; /*ventas entre el 2011 y 2013 inclusive*/

select t.titulo_id, t.titulo, t.fecha_publicacion from titulos t
where year(t.fecha_publicacion) <= '2013'
order by t.titulo_id; /*titulos publicados hasta el 2013*/

/*solucion sin subconsulta*/
select t.titulo_id, t.titulo, e.editorial_nombre 
from titulos t
inner join editoriales e on t.editorial_id = e.editorial_id
inner join ventas v on t.titulo_id = v.titulo_id
where year(v.fecha_orden) between 2011 and 2013
	and year(fecha_publicacion) <= '2013';
    
/*Consulta con In*/
select t.titulo, e.editorial_nombre 
from titulos t
inner join editoriales e on t.editorial_id = e.editorial_id
inner join ventas v on t.titulo_id = v.titulo_id
where year(v.fecha_orden) between 2011 and 2013
	and t.titulo_id in(
		select titulo_id 
        from titulos
		where year(fecha_publicacion) <= '2013'
	);
/*Consulta con Exist*/
select t.titulo, e.editorial_nombre 
from titulos t
inner join editoriales e on t.editorial_id = e.editorial_id
inner join ventas v on t.titulo_id = v.titulo_id
where exists(
		select 1 
        ##from titulos t1
		where year(t.fecha_publicacion) <= '2013'
			and year(v.fecha_orden) between 2011 and 2013
	);
    
## Modificaciones
