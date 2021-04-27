/*8.9. Informar los totales de ventas (pesos) al contado entre abril y septiembre del 2014 por cada
almacén. Mostrar nombre de almacén, y total de venta. Si un almacén no tiene ventas mostrar
en cero.*/ 
use editorial 
go 

select a.almacen_nombre, isnull(sum(t.precio*v.cantidad),0) as cantidad 
from ventas v 
inner join titulos t on v.titulo_id = t.titulo_id 
	and year(v.fecha_orden) = 2014 
	and month(v.fecha_orden) between 4 and 9 
	and v.forma_pago like '%contado%' 
right join almacenes a on v.almacen_id = a.almacen_id  
group by a.almacen_id, a.almacen_nombre