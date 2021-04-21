/*6.5. Informar cuantas formas de pago existen*/
use editorial
go

select count(distinct forma_pago) as 'cantidad de formas de pago'
from ventas

--select distinct forma_pago from ventas