/*3.6. Mostrar los nombres de los autores que empiecen con “L”.*/
use editorial
go

select a.autor_nombre
from autores a
where a.autor_nombre like 'L%'