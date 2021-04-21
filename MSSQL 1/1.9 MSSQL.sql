/*1.9. Listar los nombres de almacén que hayan tenido ventas sin repetirlos.*/
use editorial
go

select distinct a.almacen_nombre
from almacenes a, ventas v
where a.almacen_id = v.almacen_id