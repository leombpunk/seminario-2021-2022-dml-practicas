/*7.4. Informar el nivel de cargo m�s alto alcanzado por alg�n empleado de cada editorial. Mostrar
Nombre de la editorial y nivel de cargo. Ordenar por nivel de cargo m�ximo empezando por el
mayor*/
use editorial
go

select ed.editorial_nombre, max(em.nivel_cargo) as 'maximo nivel cargo'
from editoriales ed, empleados em
where ed.editorial_id = em.editorial_id
group by ed.editorial_id, ed.editorial_nombre