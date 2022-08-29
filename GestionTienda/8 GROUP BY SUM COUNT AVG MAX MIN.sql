use Facturas

select marca, nombre
	, SUM(precio) as PrecioTotal
	, COUNT(proid) as CantidadProductos
	, AVG(precio) as PromedioPrecio
from Producto
where marca in ('samsung', 'intel', 'hp', 'elgato')
group by marca, nombre
order by marca


select AVG(edad) as PromedioEdad
	, MAX(edad) as Mayor
	, MIN(edad) as Menor
from Cliente


select marca, nombre
	, SUM(precio) as PrecioTotal
	, COUNT(proid) as CantidadProductos
	, AVG(precio) as PromedioPrecio
from Producto
where marca in ('samsung', 'intel', 'hp', 'elgato')
group by marca, nombre
having COUNT(*)>0
order by marca

select marca as Marca
	,MIN(precio) as MinPrecio
	,MAX(precio) as MaxPrecio
from Producto
group by marca
having Min(precio)>100 and MAX(precio)<800