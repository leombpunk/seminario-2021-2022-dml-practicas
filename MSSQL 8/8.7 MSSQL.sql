/*8.7. Informar cuantos títulos escribió cada autor inclusive aquellos que no lo hayan hecho aún.
Mostrar nombre y apellido del autor y cantidad. Ordenar por cantidad mayor primero, apellido
y nombre.*/ 
use editorial 
go 

select a.autor_nombre, a.autor_apellido, count(ta.titulo_id) as cantidad 
from autores a 
left join titulo_autor ta on a.autor_id = ta.autor_id 
group by a.autor_id, a.autor_nombre, a.autor_apellido
order by cantidad desc, a.autor_apellido, a.autor_nombre