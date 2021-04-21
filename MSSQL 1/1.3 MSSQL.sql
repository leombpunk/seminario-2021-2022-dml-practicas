/*1.3. Listar la tabla empleados y reemplazar los nombres de columnas que tengan guion bajo por
espacio*/
use editorial
go

select empleado_id as 'empleado id', nombre, inicial_segundo_nombre as 'inicial segundo nombre', 
apellido, cargo_id as 'cargo id', nivel_cargo as 'nive lcargo', editorial_id as 'editorial id',
fecha_contratacion as 'fecha contratacion'
from empleados 