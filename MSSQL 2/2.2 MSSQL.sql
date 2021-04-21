/*2.2. Informar los empleados contratados en febrero, junio y agosto de cualquier año. Mostrar
apellido, nombre y fecha de contratación y ordenar por mes empezando por los de febrero.*/
use editorial
go

select e.apellido, e.nombre, e.fecha_contratacion
from empleados e
where month(e.fecha_contratacion) = 2 
	or month(e.fecha_contratacion) = 6 
	or month(e.fecha_contratacion) = 8
order by month(e.fecha_contratacion) asc