/*Subconsultas
10.2. Informar las editoriales que no hayan contratado empleados en el año 2010 excepto 
que sean Director editorial, Diseñador o Editor. Mostrar nombre de editorial. Ordenar.*/
use editorial;

select * from editoriales;
select * from empleados;
select * from cargos;

select ed.editorial_nombre, em.fecha_contratacion, c.cargo_descripcion
from empleados em
inner join editoriales ed on em.editorial_id = ed.editorial_id
inner join cargos c on em.cargo_id = c.cargo_id
order by ed.editorial_nombre, em.fecha_contratacion desc;

select distinct ed.editorial_nombre 
from editoriales ed
/*inner join (
	select em.editorial_id ##, e.nombre, c.cargo_descripcion, e.fecha_contratacion
    from empleados em
    inner join cargos c on em.cargo_id = c.cargo_id
    where (c.cargo_descripcion in('Director editorial','Diseñador','Editor')
			and year(fecha_contratacion) = '2010')
		or year(fecha_contratacion) = '2010'
) as xd on ed.editorial_id = xd.editorial_id ##resultado: lsita de los que si contrataron el 2010*/
where ed.editorial_id not in(
	select em.editorial_id ##, e.nombre, c.cargo_descripcion, e.fecha_contratacion
    from empleados em
    inner join cargos c on em.cargo_id = c.cargo_id
    where (c.cargo_descripcion in('Director editorial','Diseñador','Editor')
			and year(fecha_contratacion) = '2010')
		or year(fecha_contratacion) = '2010'
	)
order by ed.editorial_nombre;