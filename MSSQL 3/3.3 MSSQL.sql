/*3.3. Mostrar los t�tulos que no sean de la editorial �Algodata Infosystems�. Informar t�tulo y
Editorial.*/
use editorial
go

select t.titulo, e.editorial_nombre
from titulos t, editoriales e
where t.editorial_id = e.editorial_id
	and not e.editorial_nombre = 'Algodata Infosystems'