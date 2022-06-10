/*Serie libre
11.1. Informar las editoriales que solo tengan como empleado un editor y ningún otro 
cargo.*/
use editorial;

select * from editoriales;
select * from empleados;
select * from cargos;

select e.editorial_id, e.empleado_id, c.cargo_descripcion 
from empleados e
inner join cargos c on e.cargo_id = c.cargo_id
	and c.cargo_descripcion = 'Editor';
    
        
select e.editorial_id, e.cargo_id, count(e.cargo_id) cant_cargos 
from empleados e 
group by e.editorial_id
having cant_cargos = 1 and e.cargo_id = (select cargo_id from cargos where cargo_descripcion = 'Editor');

select ed.editorial_nombre 
from editoriales ed
inner join (
	select e.editorial_id, e.cargo_id, count(e.cargo_id) cant_cargos 
	from empleados e 
	group by e.editorial_id
	having cant_cargos = 1 and e.cargo_id = (select cargo_id from cargos where cargo_descripcion = 'Editor')
) algo on ed.editorial_id = algo.editorial_id;