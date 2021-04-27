/*8.3. Informar los autores que hayan escrito varios géneros de libros. Mostrar nombre y cantidad de
géneros ordenados por esta última columna empezando por el mayor.*/ 
use editorial 
go 

select a.autor_nombre, count(t.genero) as 'cantidad de generos' 
from autores a
inner join titulo_autor ta on a.autor_id = ta.autor_id 
inner join titulos t on ta.titulo_id = t.titulo_id 
group by a.autor_id, a.autor_nombre 
having count(t.genero) > 1
order by 'cantidad de generos' desc