/*2.1. Listar los títulos pertenecientes al editor 1389. Por cada fila, listar el título, el tipo y 
la fecha de publicación.*/
use editorial
go

select t.titulo, t.genero, t.fecha_publicacion
from titulos t
where t.editorial_id = 1389