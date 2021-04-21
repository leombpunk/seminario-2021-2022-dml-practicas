/*7.5. Mostrar los tres primeros géneros más vendidos. Mostrar género y total de ventas ordenado
por mayor total de venta.*/
use editorial
go

select top 3 t.genero, sum(v.cantidad*t.precio) as 'total de ventas'
from ventas v, titulos t
where v.titulo_id = t.titulo_id
group by t.genero
order by sum(v.cantidad*t.precio) desc