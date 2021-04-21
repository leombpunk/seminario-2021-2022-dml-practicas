/*1.5. Mostrar por cada título su nombre y cuanto corresponde de regalías por cada 1000 títulos
vendidos. Esta columna se debe mostrar como “Regalías x cada 1000 unidades”. Titulo.regalías
es un porcentaje.*/
use editorial
go 

select t.titulo, (t.precio*1000)/t.regalias as 'regalias x cada 1000'
from titulos t