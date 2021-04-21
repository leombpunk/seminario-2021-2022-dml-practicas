/*5.1. Listar los empleados ordenados por apellido, por nombre y por inicial del segundo nombre.*/
use editorial
go 

select e.*
from empleados e
order by e.apellido, e.nombre, e.inicial_segundo_nombre