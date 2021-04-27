/*8.1. Mostrar los primeros tres géneros más vendidos. Mostrar género y total de ventas ordenado
por mayor total de venta.*/
use editorial 
go 

select top 3 t.genero, sum(v.cantidad) as 'total de ventas'
from ventas v 
inner join titulos t on v.titulo_id = t.titulo_id 
group by t.genero 
order by 'total de ventas' desc 
