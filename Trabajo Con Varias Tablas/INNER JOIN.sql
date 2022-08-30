use Facturas

select * from Encargo as EN
inner join 
Producto as PR
on EN.proID = PR.proID
order by EN.proID

select EN.*, PR.nombre, PR.modelo, PR.valoracion
from Encargo as EN
inner join
Producto as PR
on PR.proID = EN.proID

---

declare @id smallint = 11

select PR.*, EN.cantidad, (precio * EN.cantidad) as Ganancia
from Producto as PR
inner join Encargo as EN
on PR.proID = EN.proID
where PR.proID = @id

----

select nombre, modelo, marca
	,sum(EN.cantidad) Productos
	,sum(precio * EN.cantidad) as GananciaTotal
from Producto as PR
inner join
Encargo as EN
on PR.proID = EN.proID
where PR.proID = @id
group by nombre, marca, modelo