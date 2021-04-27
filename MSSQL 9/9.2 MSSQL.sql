/*9.2. Informar cuantos t�tulos se han publicado primer semestre del 2011 y en el primer semestre del
2017. Mostrar dos columnas y dos filas: en la primera columna la descripci�n del periodo y en
la segunda la cantidad de t�tulos.*/ 
use editorial 
go 

select 't�tulos publicados el primer semestre del 2011' as descripcion, count(t.titulo_id) as cantidad 
from titulos t 
where year(t.fecha_publicacion) = 2011 
	and month(t.fecha_publicacion) between 1 and 6
union 
select 't�tulos publicados el primer semestre del 2017', count(t.titulo_id) 
from titulos t 
where year(t.fecha_publicacion) = 2017 
	and month(t.fecha_publicacion) between 1 and 6