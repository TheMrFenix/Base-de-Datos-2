SELECT * FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo WHERE f.nombre LIKE '%Lenovo%';

SELECT * FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo WHERE f.nombre LIKE '%Lenovo%' ORDER BY p.precio DESC LIMIT 1;

SELECT p.nombre, p.precio, f.nombre FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo WHERE f.nombre LIKE '%Lenovo%' ORDER BY p.precio DESC LIMIT 1;