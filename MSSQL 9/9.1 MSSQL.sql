/*9.1. Informar las ciudades y estado donde residen los autores, las editoriales y los almacenes
descartando valores duplicados. Ordenar por nombre de ciudad.*/ 
use editorial 
go 

select a.ciudad, a.estado 
from autores a 
union 
select ed.ciudad, ed.estado 
from editoriales ed 
union 
select al.ciudad, al.estado 
from almacenes al
order by ciudad 