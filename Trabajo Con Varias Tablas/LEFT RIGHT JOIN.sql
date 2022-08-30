use Facturas

declare @nombre varchar(50) = 'impresora%'

select PR.*, EN.cantidad, (precio * EN.cantidad) as Ganancia
from Producto as PR
left join Encargo as EN
on PR.proID = EN.proID
where PR.nombre like @nombre