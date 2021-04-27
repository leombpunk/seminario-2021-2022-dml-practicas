/*8.10. Informar el monto de regalías a pagar por cada autor, inclusive aquellos que no tengan
ventas, de las ventas del año 2013 de la editorial ‘Binnet & Hardley’. Mostrar apellido y nombre
del autor y monto a pagar. Tener en cuenta que hay que operar la regalía del título y sobre esta
la regalía del autor respecto a ese libro.*/ 
use editorial 
go 

select a.autor_apellido, a.autor_nombre, isnull(sum(((t.precio*v.cantidad)*t.regalias/100)*ta.porcentaje_regalias/100),0) as 'regalias a pagar' 
from ventas v 
inner join titulos t on v.titulo_id = t.titulo_id 
	and year(v.fecha_orden) = 2013 
inner join editoriales ed on t.editorial_id = ed.editorial_id 
	and ed.editorial_nombre = 'Binnet & Hardley' 
inner join titulo_autor ta on t.titulo_id = ta.titulo_id 
right join autores a on ta.autor_id = a.autor_id 
group by a.autor_apellido, a.autor_nombre 

--select * from titulo_autor 
--select * from autores
--select * from ventas where year(fecha_orden) = 2013 
--select * from editoriales --0877
--select t.titulo_id, t.editorial_id 
--from titulos t
--inner join ventas v on t.titulo_id = v.titulo_id 
--where t.editorial_id = 0877 and year(v.fecha_orden) = 2013