/*6.3. Informar cuantos planes de regalías tiene el título MC3021*/
use editorial
go

select count(pr.regalias) as 'cantidad de regalias del titulo MC3102'
from titulos t, plan_regalias pr
where t.titulo_id = pr.titulo_id
	and t.titulo_id = 'MC3021'
group by t.titulo_id

--select * from plan_regalias where titulo_id = 'MC3021'