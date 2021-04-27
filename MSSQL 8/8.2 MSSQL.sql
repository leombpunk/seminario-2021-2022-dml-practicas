/*8.2. Informar las ventas a 60 días. Mostrar el id de título, el título y el total de ventas (cantidad por
precio). Renombrar a la columna calculada.*/ 
use editorial 
go 

select t.titulo_id, t.titulo, t.precio*v.cantidad as 'total de ventas' 
from ventas v 
inner join titulos t on v.titulo_id = t.titulo_id 
where v.forma_pago like '60%'