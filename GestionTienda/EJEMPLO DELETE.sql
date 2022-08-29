delete Encargo
where pedID = (select max(pedID) from Pedido
                    where dni like 'B123')
                    and proID = 17