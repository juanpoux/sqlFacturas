use Facturas

select * from Producto
where nombre='Tarjeta'

select * from Producto
where nombre like 'Tarjeta%'

select * from Producto
where modelo like '%gaming%'

select * from Producto
where nombre like 'rat_n' 
-- '_' admite cualquier caracter que esté en la posicion que reemplaza
-- como hay 'ratón' y 'raton', puede encontrar las 2 posibilidades

select * from Producto
where modelo like 'Extreme%'

select * from Producto
where modelo like 'Extreme [3,4]%'
-- si queremos incluir algun filtro mas, lo ponemos entre corchetes

select * from Producto
where modelo like 'Extreme [1-4]%'
--definimos el rango con el - para incluir todos los del 1 al 4

select * from Producto
where modelo like 'Extreme [^3]%'
--de esta forma omitimos los items que incluyen el caracter

select * from Producto
where nombre not like 'Tarjeta%'
--omite los items que contengan la busqueda