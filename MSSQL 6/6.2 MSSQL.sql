/*6.2. Mostrar el máximo de adelanto de todos los títulos*/
use editorial
go

select MAX(adelanto) as 'máximo de adelantos de todos los libros'
from titulos