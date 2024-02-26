SELECT * FROM producto p WHERE p.codigo_fabricante=(SELECT f.codigo FROM fabricante f WHERE f.nombre LIKE "%Lenovo%");

SELECT * FROM producto p WHERE p.codigo_fabricante=(SELECT f.codigo FROM fabricante f WHERE f.nombre LIKE "%Lenovo%") ORDER BY p.precio DESC LIMIT 1;

SELECT p.nombre, p.precio FROM producto p WHERE p.codigo_fabricante=(SELECT f.codigo FROM fabricante f WHERE f.nombre LIKE "%Lenovo%") ORDER BY p.precio DESC LIMIT 1;

SELECT p.nombre, p.precio FROM producto p WHERE p.codigo_fabricante=(SELECT f.codigo FROM fabricante f WHERE f.nombre LIKE "%Hewlett-Packard%") ORDER BY p.precio ASC LIMIT 1;

SELECT *, MAX(precio) AS mas_caro FROM producto p GROUP BY p.precio  HAVING mas_caro>=559;

SELECT *, AVG(precio) AS promedio FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo WHERE precio>promedio AND f.nombre="%Asus%";
