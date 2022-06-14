/*Serie libre
11.2. Listar los almacenes que vendieron todos los títulos. Mostrar nombre de almacén.*/
use editorial;

select * from almacenes;
select * from ventas;
select * from titulos;

## cantidad de titulos (únicos) vendidos por alamcen
select v.almacen_id, count(distinct v.titulo_id) as titulos
from ventas v 
group by v.almacen_id; ##ninguno vendio todos los libros

## final
select al.almacen_nombre
from almacenes al
inner join (
	select v.almacen_id, count(distinct v.titulo_id) as titulos
	from ventas v 
	group by v.almacen_id
) as vendidos on al.almacen_id = vendidos.almacen_id
where vendidos.titulos = (select count(*) from titulos);


