/*5.2. Listar los títulos pertenecientes al género “business”. Por cada fila, listar el id, el título y el
precio. Ordenar los datos por precio en forma descendente e id de artículo en forma ascendente.*/
use editorial
go 

select titulo_id, titulo, precio
from titulos 
where genero = 'business'
order by precio desc, titulo_id asc