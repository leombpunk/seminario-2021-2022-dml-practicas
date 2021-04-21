/*6.4. Obtener el total de ventas realizadas a 30 días en el año 2014*/
/*total = cantidad ó total = cantidad * precio*/
use editorial
go 

select sum(v.cantidad*t.precio) as 'total ventas a 30 dias año 2014'
from ventas v, titulos t
where v.titulo_id = t.titulo_id
	and v.forma_pago = '30 días'
	and year(v.fecha_orden) = 2014