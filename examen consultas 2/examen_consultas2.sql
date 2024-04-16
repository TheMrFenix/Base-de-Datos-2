select nombre , precio from producto order by precio desc limit 2;

select nombre, precio from producto where precio<=All (select precio from producto);

select nombre from fabricante where id=exists (select id from producto);