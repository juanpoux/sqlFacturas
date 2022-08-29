use Facturas

select * from Cliente
order by nombre desc

select * from Cliente
order by edad desc

select * from Cliente
order by edad asc, nombre desc 

select top 15 * from Cliente
order by edad desc, nombre asc

select * from Cliente
order by edad desc offset 5 rows

select * from Cliente
order by edad desc
	offset 5 rows
	fetch next 2 rows only

