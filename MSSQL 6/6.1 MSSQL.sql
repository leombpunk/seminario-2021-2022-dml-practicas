/*6.1. Mostrar el promedio de venta anual de todos los títulos*/
/*consulta ambigua total = cantidad ó total = precio * cantidad?*/
use editorial
go

select t.titulo_id, t.titulo, year(v.fecha_orden) as anio, AVG(v.cantidad*t.precio) as 'Promeddio de venta anual'
from titulos t, ventas v
where t.titulo_id = v.titulo_id
group by t.titulo_id, t.titulo, year(v.fecha_orden)
order by t.titulo_id, year(v.fecha_orden)
