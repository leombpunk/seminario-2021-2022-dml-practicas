/*3.7. Mostrar los nombres de los autores que tengan una “A” en su nombre.*/
use editorial
go

select a.autor_nombre
from autores a
where a.autor_nombre like '%A%'