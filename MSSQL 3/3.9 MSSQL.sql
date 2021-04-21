/*3.9. Mostrar los nombres de los autores que empiecen con letras que van de la T a la Y.*/
use editorial
go

select a.autor_nombre
from autores a
where a.autor_nombre like '[T-Y]%'