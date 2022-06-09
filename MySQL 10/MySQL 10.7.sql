/*Subconsulta
10.7. Informar el almacén o los almacenes que haya vendido más que todos los otros. Mostrar 
Nombre de almacén y cantidad.*/
## Habrá que usar ALL? supongo que sí
use editorial;

select almacen_id, sum(ve.cantidad*ti.precio) 
from ventas ve, titulos ti
where ve.titulo_id = ti.titulo_id
group by almacen_id;

select al.almacen_id, al.almacen_nombre, totales.totalv as mejorV
from almacenes al
inner join (
	select almacen_id, sum(ve.cantidad*ti.precio) totalv
	from ventas ve, titulos ti
	where ve.titulo_id = ti.titulo_id
	group by almacen_id
    ) as totales on al.almacen_id = totales.almacen_id
where not totales.totalv < SOME(
		select sum(ve.cantidad*ti.precio)
		from ventas ve, titulos ti
		where ve.titulo_id = ti.titulo_id 
		group by almacen_id
    );

