/*2.6. Mostrar los descuentos que tengan una cantidad m�nima establecida. Informar tipo descuento,
cantidad m�nima y descuento*/
use editorial
go

select d.tipo_descuento, d.cantidad_minima, d.descuento
from descuentos d
where d.cantidad_maxima is not null