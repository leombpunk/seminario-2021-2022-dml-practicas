/*3.2. Listar el nombre, la inicial del segundo nombre y el apellido de los empleados de las editoriales
“Lucerne Publishing” y “New Moon Books”*/
use editorial
go

select em.nombre, em.inicial_segundo_nombre, em.apellido
from editoriales ed, empleados em
where ed.editorial_id = em.editorial_id
	and (ed.editorial_nombre = 'Lucerne Publishing'
	or ed.editorial_nombre = 'New Moon Books')