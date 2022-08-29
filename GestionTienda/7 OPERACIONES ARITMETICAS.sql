use Facturas

select top 10 nombre, modelo, marca, precio, cantidad
from Producto
order by precio desc

select top 10 nombre, modelo, marca,precio,cantidad, precio * cantidad as 'Precio de Lote'
from Producto
order by 'Precio de Lote' desc --usar comillas dobles """""""""""""""""""

select * from
(
select nombre,modelo,marca,valoracion,precio
	,(valoracion/precio) * 10 as "relacion Calidad-Precio"
from Producto
--order by 'relacion Calidad-Precio' desc
) as SeleccionPrevia
where "relacion Calidad-Precio" > 1.0
order by "relacion Calidad-Precio" desc


select * ,edad%2 from Cliente
where edad%2 = 0

select * ,edad%2 from Cliente
where edad%2 <> 0