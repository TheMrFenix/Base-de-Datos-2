SELECT * FROM producto p WHERE p.codigo_fabricante=(SELECT f.codigo FROM fabricante f WHERE f.nombre LIKE "%Lenovo%");

SELECT * FROM producto p WHERE p.codigo_fabricante=(SELECT f.codigo FROM fabricante f WHERE f.nombre LIKE "%Lenovo%") ORDER BY p.precio DESC LIMIT 1;

SELECT p.nombre, p.precio FROM producto p WHERE p.codigo_fabricante=(SELECT f.codigo FROM fabricante f WHERE f.nombre LIKE "%Lenovo%") ORDER BY p.precio DESC LIMIT 1;

SELECT p.nombre, p.precio FROM producto p WHERE p.codigo_fabricante=(SELECT f.codigo FROM fabricante f WHERE f.nombre LIKE "%Hewlett-Packard%") ORDER BY p.precio ASC LIMIT 1;

SELECT * FROM producto p ORDER BY p.precio DESC LIMIT 2;

SELECT * FROM producto p WHERE p.codigo_fabricante=(SELECT f.codigo FROM fabricante f WHERE f.nombre LIKE "%Asus%") ORDER BY p.precio DESC LIMIT 1;

SELECT nombre,precio FROM producto WHERE precio>=ALL (SELECT precio FROM producto);

SELECT nombre,precio FROM producto WHERE precio<=ALL (SELECT precio FROM producto);

SELECT nombre FROM fabricante WHERE codigo=ANY (SELECT codigo_fabricante FROM producto);

SELECT nombre FROM fabricante WHERE codigo!=All (SELECT codigo_fabricante FROM producto);

SELECT nombre FROM fabricante WHERE codigo IN(SELECT codigo_fabricante FROM producto);

SELECT nombre FROM fabricante WHERE codigo NOT IN(SELECT codigo_fabricante FROM producto);

SELECT nombre FROM fabricante WHERE EXISTS(SELECT 1 FROM producto WHERE producto.codigo_fabricante=fabricante.codigo);
