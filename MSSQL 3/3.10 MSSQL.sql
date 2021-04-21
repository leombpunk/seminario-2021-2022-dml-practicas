/*3.10. La columna autor id de autores esta formateada con una secuencia de 3 series de
caracteres numéricos separadas por guiones asi: ‘xxx-xx-xxxx’ por ejemplo ‘172-32-1176’.
Informar los autores que en el id tengan las siguientes condiciones (una consulta por cada
punto)
a) Primer serie empiece con 4 o 7*/
use editorial
go

select *
from autores a
where a.autor_id like '[4,7][0-9][0-9]-[0-9][0-9]-[0-9][0-9][0-9][0-9]';
--where a.autor_id like '[4,7]%';
--where a.autor_id like '[4,7]__-__-____';

/*b) Segunda serie tenga solo 0, 5 y 8 en cualquier posición.*/
use editorial
go

select *
from autores a
where a.autor_id like '[0-9][0-9][0-9]-[0,5,8][0,5,8]-[0-9][0-9][0-9][0-9]';

/*c) Segunda serie tenga solo 0, 5 u 8 en cualquier posición.*/
use editorial
go

select *
from autores a
where a.autor_id like '[0-9][0-9][0-9]-[0,5,8][^0,5,8]-[0-9][0-9][0-9][0-9]' 
	or a.autor_id like '[0-9][0-9][0-9]-[^0,5,8][0,5,8]-[0-9][0-9][0-9][0-9]';

/*d) Primer serie empiece con 7 a 9.*/
use editorial
go

select *
from autores a
where a.autor_id like '[7-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9][0-9][0-9]';

/*e) Primer serie empiece con 7 a 9 y segunda serie no tenga 1 o 7*/
use editorial
go

select *
from autores a
where a.autor_id like '[7-9][0-9][0-9]-[^1,7][^1,7]-[0-9][0-9][0-9][0-9]';
