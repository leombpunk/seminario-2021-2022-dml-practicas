/*9.2. Informar cuantos títulos se han publicado primer semestre del 2011 y en el primer semestre del
2017. Mostrar dos columnas y dos filas: en la primera columna la descripción del periodo y en
la segunda la cantidad de títulos.*/ 
use editorial 
go 

select 'títulos publicados el primer semestre del 2011' as descripcion, count(t.titulo_id) as cantidad 
from titulos t 
where year(t.fecha_publicacion) = 2011 
	and month(t.fecha_publicacion) between 1 and 6
union 
select 'títulos publicados el primer semestre del 2017', count(t.titulo_id) 
from titulos t 
where year(t.fecha_publicacion) = 2017 
	and month(t.fecha_publicacion) between 1 and 6