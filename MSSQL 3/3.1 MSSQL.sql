/*3.1. Listar las ventas que realizo el título “Prolonged Data Deprivation: Four Case Studies” el día 29
de mayo de 2013. Mostrar nombre de almacenes, números de orden y la cantidad de cada venta.*/
use editorial
go

select a.almacen_nombre, v.numero_orden, v.cantidad
from ventas v, almacenes a, titulos t
where v.almacen_id = a.almacen_id
	and v.titulo_id = t.titulo_id
	and t.titulo = 'Prolonged Data Deprivation: Four Case Studies'
	and v.fecha_orden = '20130529'