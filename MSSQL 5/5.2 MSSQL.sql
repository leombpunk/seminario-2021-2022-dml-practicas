/*5.2. Listar los t�tulos pertenecientes al g�nero �business�. Por cada fila, listar el id, el t�tulo y el
precio. Ordenar los datos por precio en forma descendente e id de art�culo en forma ascendente.*/
use editorial
go 

select titulo_id, titulo, precio
from titulos 
where genero = 'business'
order by precio desc, titulo_id asc