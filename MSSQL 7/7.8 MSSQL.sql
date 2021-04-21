/*7.8. Informar los autores que hayan escrito varios g�neros de t�tulos. Mostrar nombre y cantidad de
g�neros ordenados por esta �ltima columna empezando por el mayor.*/
use editorial
go

select a.autor_nombre, count(t.genero) as 'cantidad de generos escritos'
from autores a, titulo_autor ta, titulos t
where a.autor_id = ta.autor_id 
	and t.titulo_id = ta.titulo_id
group by ta.autor_id, a.autor_nombre
having count(t.genero) > 1
order by count(t.genero) desc