use Facturas

select * from Producto
where fabricacion <'01/01/2020'
	or fabricacion is null
order by fabricacion
select @@ROWCOUNT as "Total fechas"


----------entre 2 fechas----------
select * from Producto
where fabricacion between '2020/02/14' and '2021/02/15'
order by fabricacion
select @@ROWCOUNT as "Total fechas"
----------------------------------

--------------entre fechas incluyendo hora-------------------
select * from Producto
where fabricacion between '2020/11/04' and '2020/11/04 23:59'
order by fabricacion
select @@ROWCOUNT as "Total fechas"
-------------------------------------------------------------


select * from Producto
where fabricacion between '2020/11/04' and '2020/11/04 23:59:29.999' --el limite es 23:59:29.998, si es mas que eso, redondea para arriba
order by fabricacion
select @@ROWCOUNT as "Total fechas - Buscando limites"

