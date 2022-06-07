/*Subconsultas
10.6. Informar los almacenes que hayan vendido más del doble que cualquier otro almacén. 
Mostrar Nombre de almacén y cantidad. Ordenar por mayor venta primero.*/
use editorial;

select ve.almacen_id, sum(ve.cantidad) as cantidad
from ventas ve
inner join almacenes
group by ve.almacen_id;

select ve.almacen_id, sum(ve.cantidad)*2 as cantidad
from ventas ve
group by ve.almacen_id;/*el doble*/