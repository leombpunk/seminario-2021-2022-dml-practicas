/*3.8. Mostrar los títulos que no tengan un “Computer” en su título.*/
use editorial
go 

select t.*
from titulos t
where not t.titulo like '%Computer%'