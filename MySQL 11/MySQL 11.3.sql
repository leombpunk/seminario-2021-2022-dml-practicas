/*Serie libre
11.3. Informar los empleados que en su cargo tengan mejor nivel que otros empleados en el 
mismo cargo. Mostrar nombre y apellido del empleado, editorial, cargo y nivel de cargo.*/
use editorial;

select * from empleados;
select * from cargos;
select * from editoriales;

select c.cargo_id, max(em.nivel_cargo) 
from cargos c
left join empleados em on c.cargo_id = em.cargo_id
group by c.cargo_id
order by c.cargo_id;

select em.nombre, em.apellido, c.cargo_descripcion, max(em.nivel_cargo)
from empleados em
inner join cargos c on c.cargo_id = em.cargo_id
group by c.cargo_id
order by c.cargo_descripcion;


select em.nombre, em.apellido, ed.editorial_nombre, c.cargo_descripcion, em.nivel_cargo
from empleados em
inner join editoriales ed on em.editorial_id = ed.editorial_id
inner join (
	select cargo_id, max(nivel_cargo) nivel_cargo
	from empleados  
	group by cargo_id
) as maxcargos on em.cargo_id = maxcargos.cargo_id
	and maxcargos.nivel_cargo = em.nivel_cargo
left join cargos c on em.cargo_id = c.cargo_id
order by c.cargo_descripcion;