/*4.2. Mostrar los títulos y el adelanto que le corresponde a cada uno, si este valor fuera nulo
informar le valor predeterminado de 1000 pesos.*/
use editorial
go

select t.titulo, isnull(t.adelanto,1000) as adelanto
from titulos t