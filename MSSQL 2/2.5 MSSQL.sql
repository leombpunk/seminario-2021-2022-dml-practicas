/*2.5. Mostrar aquellos libros que tienen el precio en nulo. Mostrar id de título, nombre y nombre del
editor.*/
use editorial
go 

select t.titulo_id, t.titulo, e.editorial_nombre
from titulos t, editoriales e
where t.editorial_id = e.editorial_id
	and t.precio is null