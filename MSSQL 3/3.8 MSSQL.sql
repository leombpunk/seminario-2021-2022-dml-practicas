/*3.8. Mostrar los t�tulos que no tengan un �Computer� en su t�tulo.*/
use editorial
go 

select t.*
from titulos t
where not t.titulo like '%Computer%'