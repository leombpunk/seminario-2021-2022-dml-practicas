/*Subconsultas
10.4. Informar aquellos títulos que hayan tenido alguna venta mejor que las ventas del título
“Onions, Leeks, and Garlic: Cooking Secrets of the Mediterranean”. Mostrar título y género. 
Ordenar por título.*/
use editorial;

select * from titulos;

select ventas.titulo_id, sum(titulos.precio*ventas.cantidad) 
from titulos
inner join ventas on ventas.titulo_id = titulos.titulo_id
group by ventas.titulo_id;

select ventas.titulo_id, sum(titulos.precio*ventas.cantidad) 
from titulos
inner join ventas on ventas.titulo_id = titulos.titulo_id
where titulos.titulo like 'Onions, Leeks, and Garlic: Cooking Secrets of the Mediterranean'
group by ventas.titulo_id;

select ti.titulo, ti.genero 
from titulos ti
inner join (
	select ventas.titulo_id, sum(titulos.precio*ventas.cantidad) as total
	from titulos
	inner join ventas on ventas.titulo_id = titulos.titulo_id
	group by ventas.titulo_id
) ventas on ti.titulo_id = ventas.titulo_id 
where total > (select sum(titulos.precio*ventas.cantidad) 
from titulos
inner join ventas on ventas.titulo_id = titulos.titulo_id
where titulos.titulo like 'Onions, Leeks, and Garlic: Cooking Secrets of the Mediterranean'
group by ventas.titulo_id);