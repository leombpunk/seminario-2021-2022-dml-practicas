/*2.4. Informar la venta de los almacenes de id 7xxx. Mostrar el almac�n id, el n�mero de orden, la
fecha de la factura y el t�tulo nombre.*/
use editorial
go

select v.almacen_id, v.numero_orden, v.fecha_orden, t.titulo
from ventas v, titulos t 
where v.titulo_id = t.titulo_id 
	and v.almacen_id like '7%'