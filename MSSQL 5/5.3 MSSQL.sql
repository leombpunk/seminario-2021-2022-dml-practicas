/*5.3. Informar la venta más importante con forma de pago a 60 días. Mostrar el almacén, el número
de orden, la fecha de la factura y el título.*/
use editorial
go

select top 1 a.almacen_nombre, v.numero_orden, v.fecha_orden, t.titulo
from ventas v, almacenes a, titulos t
where v.almacen_id = a.almacen_id
	and v.titulo_id = t.titulo_id
	and v.forma_pago = '60 días'
order by v.cantidad * t.precio desc