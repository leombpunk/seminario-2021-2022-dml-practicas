/*7.1. Informar cuantos t�tulos tiene cada autor. Mostrar c�digo de autor y cantidad de libros.*/
use editorial
go

select autor_id, count(titulo_id) as 'cantidad de libros'
from titulo_autor
group by autor_id