/*7.7. Informar el total de regalías obtenidas por cada título que haya tenido 40 o más unidades
vendidas. Mostrar el título y el monto en pesos de las regalías y ordenar por mayor regalía
primero.*/
use editorial
go

select t.titulo, sum((v.cantidad*t.precio)/t.regalias) as 'regalias'
from titulos t, ventas v
where t.titulo_id = v.titulo_id
group by t.titulo_id, t.titulo
having sum(v.cantidad) >= 40
order by sum((v.cantidad*t.precio)/t.regalias) desc