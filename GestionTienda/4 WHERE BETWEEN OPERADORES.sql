use Facturas

select * from Producto
where cantidad = 10

select * from Producto
where cantidad > 10

select * from Producto
where cantidad <= 10
order by cantidad

select * from Producto
where cantidad != 10 -- tambien peude ser where cantidad <> 10
order by cantidad

select * from Producto
where cantidad between 5 and 10
order by cantidad

select @@ROWCOUNT --nos da el numero de la cantidad de filas que filtró

select * from Producto
where cantidad not between 5 and 10
order by cantidad

select @@ROWCOUNT as 'Cantidad de filas'

select * from Producto
where modelo is null

select * from Producto
where modelo is not null

