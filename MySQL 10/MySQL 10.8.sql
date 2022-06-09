/*Subconsulta
10.8. Informar el o los títulos que se vendieron más que cualquier otro con forma de pago a 
60 días. Mostrar nombre del titulo y la cantidad vendida con forma de pago a 60 días.*/
use editorial;
## Usar SOME/ANY

select * from titulos;
select * from ventas;

select ti.titulo, sum(ve.cantidad) as total_ventas_60d 
from titulos as ti
inner join ventas as ve on ti.titulo_id = ve.titulo_id
	and ve.forma_pago like '60 días'
group by ti.titulo_id;

select ti.titulo, ve.total_ventas_60d 
from titulos as ti
inner join (
	select titulo_id, sum(cantidad) as total_ventas_60d 
    from ventas 
    where forma_pago like '60 días'
    group by titulo_id
    ) as ve on ti.titulo_id = ve.titulo_id
where ve.total_ventas_60d > SOME(
		select sum(cantidad) as total_ventas_60d 
		from ventas 
		where forma_pago like '60 días'
        group by titulo_id
        )
group by ti.titulo_id;

