/*8.8. ¿Informar cuantos títulos “Is Anger the Enemy?” vendió cada almacén. Si un almacén no tuvo
ventas del mismo informar con un cero. Mostrar código de almacén y cantidad.*/ 
use editorial 
go 

select a.almacen_id, count(v.titulo_id) as cantidad 
from titulos t 
inner join ventas v on t.titulo_id = v.titulo_id 
	and t.titulo = 'Is Anger the Enemy?' 
right join almacenes a on v.almacen_id = a.almacen_id 
group by a.almacen_id