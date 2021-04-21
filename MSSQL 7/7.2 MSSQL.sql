/*7.2. Informar el total de unidades vendidas por n�mero de orden del almac�n 7131. Mostrar
n�mero de orden y total vendido.*/
use editorial
go

select v.numero_orden, sum(v.cantidad) as 'total vendido' 
from ventas v, almacenes a
where v.almacen_id = a.almacen_id
	and a.almacen_id = '7131'
group by v.numero_orden