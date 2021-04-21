/*3.4. Informar las ventas de los siguientes t�tulos: 'Cooking with Computers: Surreptitious Balance
Sheets', 'The Psychology of Computer Cooking', 'Emotional Security: A New Algorithm'. Mostrar
titulo, nombre de almac�n, fecha de orden, n�mero de orden y cantidad. Ordenar por t�tulos.*/
use editorial
go

select t.titulo, a.almacen_nombre, v.fecha_orden, v.numero_orden, v.cantidad
from ventas v, titulos t, almacenes a
where v.titulo_id = t.titulo_id
	and v.almacen_id = a.almacen_id
	and (t.titulo = 'Cooking with Computers: Surreptitious Balance Sheets'
	or t.titulo = 'The Psychology of Computer Cooking' 
	or t.titulo = 'Emotional Security: A New Algorithm')