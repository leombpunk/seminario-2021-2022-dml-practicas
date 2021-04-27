/*8.4. Informar las ventas por título. Mostrar título, fecha de orden y cantidad, si no tienen venta al
menos mostrar una fila que indique la cantidad en 0 y la fecha en nulo. Ordenar por título y
mayor cantidad vendida primero.*/ 
use editorial 
go 

select t.titulo, max(v.fecha_orden) as 'fech de orden', sum(isnull(v.cantidad,0)) as cantidad 
from titulos t 
left join ventas v on t.titulo_id = v.titulo_id 
group by t.titulo_id, t.titulo
order by cantidad desc, t.titulo