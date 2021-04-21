/*1.8. Listar los países de las editoriales sin repetirlos.*/
use editorial
go

select distinct e.pais
from editoriales e