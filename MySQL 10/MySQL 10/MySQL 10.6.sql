/*Subconsultas
10.6. Informar los almacenes que hayan vendido más del doble que cualquier otro almacén. 
Mostrar Nombre de almacén y cantidad. Ordenar por mayor venta primero.*/
use editorial;

select ve.almacen_id, sum(ve.cantidad)*2 as doble
from ventas ve
group by ve.almacen_id;/*el doble*/

select al.almacen_id, al.almacen_nombre, cventas.cantidad 
from almacenes as al
inner join (
	select ve.almacen_id, sum(ve.cantidad) as cantidad
	from ventas ve
	group by ve.almacen_id
    ) as cventas on al.almacen_id = cventas.almacen_id
inner join (
	select ve.almacen_id, sum(ve.cantidad)*2 as doble
	from ventas ve
	group by ve.almacen_id
	) as cdoble
where cventas.cantidad > cdoble.doble
group by al.almacen_id;