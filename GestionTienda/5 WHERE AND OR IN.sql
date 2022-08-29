use Facturas

select * from Producto
where nombre like 'televisi_n'
select @@ROWCOUNT as 'TOTAL TELEVISORES'

SELECT * from Producto
where valoracion>7
select @@ROWCOUNT as "total mejores de 7"

select * from Producto
where nombre like 'televisi_n'
	and valoracion > 7
select @@ROWCOUNT as "Televisores +7"


select * from Producto
where nombre like 'Televisi_n'
	or nombre like 'torre'
select @@ROWCOUNT as "Total televisores y torres"

select * from Producto
where (nombre like 'televisi_n'
	or nombre like 'torre')
	and valoracion > 7
select @@ROWCOUNT as "Total tv y torres +7"

---------------------------
select * from Producto
where marca like 'samsung'

select * from Producto
where marca in ('samsung', 'logitech')
	and precio > 200
select  @@ROWCOUNT as "marcas > $200"

