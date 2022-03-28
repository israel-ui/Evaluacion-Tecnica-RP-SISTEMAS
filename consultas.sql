a. Detalle de las ventas registradas por el vendedor con id=1 de clientes de la
 provincia de Córdoba (id=4).

Select vt.* from vendedores ve, ventas vt, clientes cl, provincias pr where ve.id_vendedor = vt.id_vendedor and vt.id_cliente = cl.id_cliente and cl.id_provincias= pr.id_provincias and pr.id_provincias=4 and cl.id_cliente=1

b. Detalle del total vendido por cada vendedor en el año 2021.

Select vt.*, vt.nombre from ventas vt, vendedores ve where vt.id_vendedor=ve.id_vendedor and year(fecha)='2021' group by vt.id_vendedor