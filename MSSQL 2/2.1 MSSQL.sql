/*2.1. Listar los t�tulos pertenecientes al editor 1389. Por cada fila, listar el t�tulo, el tipo y 
la fecha de publicaci�n.*/
use editorial
go

select t.titulo, t.genero, t.fecha_publicacion
from titulos t
where t.editorial_id = 1389