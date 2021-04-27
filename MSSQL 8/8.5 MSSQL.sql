/*8.5. Informar los autores que no tienen títulos. Mostrar nombre y apellido*/ 
use editorial 
go 

select a.autor_nombre, a.autor_apellido 
from autores a 
left join titulo_autor ta on a.autor_id = ta.autor_id 
group by a.autor_id, a.autor_nombre, a.autor_apellido 
having count(ta.titulo_id) = 0