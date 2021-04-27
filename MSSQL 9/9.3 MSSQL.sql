/*9.3. Emitir un informe comparativo entre las ventas del a�o 2012 y el a�o 2014. El informe debe
tener las siguientes columnas: c�digo de t�tulo, titulo, a�o y cantidad de vendida en el a�o
(cada uno correspondiente al c�digo de t�tulo de la fila correspondiente). Tener presente que
un t�tulo puede tener ventas en un a�o y no en el otro, en cuyo caso debe aparecer igual en el
informe el a�o sin ventas. Ordenar por t�tulo y a�o.*/ 
use editorial 
go 

select t.titulo_id as 'codigo de titulo', t.titulo, '2012' as 'a�o', isnull(sum(v.cantidad),0) as 'cantidad vendida en el a�o' 
from titulos t 
left join ventas v on t.titulo_id = v.titulo_id 
	and year(v.fecha_orden) = 2012
group by t.titulo_id, t.titulo 
union 
select t.titulo_id as 'codigo de titulo', t.titulo, '2014' as 'a�o', isnull(sum(v.cantidad),0) as 'cantidad vendida en el a�o' 
from titulos t 
left join ventas v on t.titulo_id = v.titulo_id 
	and year(v.fecha_orden) = 2014
group by t.titulo_id, t.titulo 
order by titulo, 'a�o'