/*Subconsulta
10.9. Informar el nivel de cargo más alto alcanzado por algún empleado de cada editorial. 
Mostrar Nombre de la editorial y nivel de cargo. Ordenar por nivel de cargo máximo 
empezando por el mayor.*/
use editorial;

select * from empleados;

select ed.editorial_id, ed.editorial_nombre, max(em.nivel_cargo) as max_cargo 
from editoriales ed
inner join empleados em on ed.editorial_id = em.editorial_id
group by ed.editorial_id, ed.editorial_nombre;