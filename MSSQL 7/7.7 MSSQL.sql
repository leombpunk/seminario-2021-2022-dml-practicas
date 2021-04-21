/*7.7. Informar el total de regal�as obtenidas por cada t�tulo que haya tenido 40 o m�s unidades
vendidas. Mostrar el t�tulo y el monto en pesos de las regal�as y ordenar por mayor regal�a
primero.*/
use editorial
go

select t.titulo, sum((v.cantidad*t.precio)/t.regalias) as 'regalias'
from titulos t, ventas v
where t.titulo_id = v.titulo_id
group by t.titulo_id, t.titulo
having sum(v.cantidad) >= 40
order by sum((v.cantidad*t.precio)/t.regalias) desc