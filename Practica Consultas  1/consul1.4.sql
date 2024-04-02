use tienda;
SELECT nombre FROM fabricante WHERE NOT EXISTS(SELECT 1 FROM producto WHERE producto.id_fabricante=fabricante.id);

select nombre,precio from producto where precio>=all (select nombre from fabricante);

select * from producto;