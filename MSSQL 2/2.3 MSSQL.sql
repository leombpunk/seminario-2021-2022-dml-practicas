/*2.3. Informar los empleados que tengan cargo id entre 10 y 13 excepto que su nivel de cargo sea
100 o superior. Mostrar Nombre. Apellido y las columnas usadas en el Where.*/
use editorial
go 

select e.nombre, e.apellido, e.cargo_id, e.nivel_cargo
from empleados e
where e.cargo_id between 10 and 13 
	and e.nivel_cargo >= 100