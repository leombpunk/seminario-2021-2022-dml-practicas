/*9.3. Emitir un informe comparativo entre las ventas del año 2012 y el año 2014. El informe debe
tener las siguientes columnas: código de título, titulo, año y cantidad de vendida en el año
(cada uno correspondiente al código de título de la fila correspondiente). Tener presente que
un título puede tener ventas en un año y no en el otro, en cuyo caso debe aparecer igual en el
informe el año sin ventas. Ordenar por título y año.*/ 
use editorial 
go 

select t.titulo_id as 'codigo de titulo', t.titulo, '2012' as 'año', isnull(sum(v.cantidad),0) as 'cantidad vendida en el año' 
from titulos t 
left join ventas v on t.titulo_id = v.titulo_id 
	and year(v.fecha_orden) = 2012
group by t.titulo_id, t.titulo 
union 
select t.titulo_id as 'codigo de titulo', t.titulo, '2014' as 'año', isnull(sum(v.cantidad),0) as 'cantidad vendida en el año' 
from titulos t 
left join ventas v on t.titulo_id = v.titulo_id 
	and year(v.fecha_orden) = 2014
group by t.titulo_id, t.titulo 
order by titulo, 'año'