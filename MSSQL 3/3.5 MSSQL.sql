/*3.5. Informar las publicaciones del año 2011 exceptuando las de los géneros ‘business’, ‘psychology’
y ‘trad_cook’. Mostrar título y género. Ordenar por género y titulo.*/
use editorial
go

select t.titulo, t.genero
from titulos t
where year(t.fecha_publicacion) = 2011 
	and not (t.genero = 'business' 
		or t.genero = 'psychology' 
		or t.genero = 'trad_cook')
order by t.genero, t.titulo