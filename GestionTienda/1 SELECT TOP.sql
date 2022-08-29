use Facturas

select 'Clientes' as Tabla
select * from Cliente

select dni as Identificacion, nombre as Cliente
from Cliente

-----------------------------------------
select 'Productos' as Tabla

select * from Producto

select nombre as Producto, precio*cantidad as PrecioTotalLote
from Producto

select nombre as Producto, precio*cantidad as 'Precio Total del Lote'
from Producto

------------------------------------------

select 'Pedidos' as Tabla

select top 3 * from Pedido

------------------------------------------
select 'Encargos' as Tabla

select top 5 * from Encargo