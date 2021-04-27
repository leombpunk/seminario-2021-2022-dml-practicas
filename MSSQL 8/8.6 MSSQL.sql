/*8.6. Informar todos los cargos y los empleados que le corresponden de la editorial 'New Moon
Books', si algún cargo tiene un empleado asignado informar como 'Vacante' en apellido y ‘---‘
en nombre. Mostrar descripción del cargo, apellido y nombre. Ordenar por descripción del
cargo, apellido y nombre.*/ 
use editorial 
go 

/*select c.cargo_descripcion, e.apellido, e.nombre, ed.editorial_id 
from cargos c 
left join empleados e on c.cargo_id = e.cargo_id 
inner join editoriales ed on e.editorial_id = ed.editorial_id 
	and ed.editorial_nombre = 'New Moon Books'*/

select c.cargo_descripcion, isnull(e.apellido,'Vacante') as apellido, isnull(e.nombre,'---') as nombre
from empleados e 
inner join editoriales ed on e.editorial_id = ed.editorial_id 
	and ed.editorial_nombre = 'New Moon Books'
right join cargos c on e.cargo_id = c.cargo_id 
order by c.cargo_descripcion, e.apellido, e.nombre
--select * from cargos