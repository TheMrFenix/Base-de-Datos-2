SELECT * FROM steam.proyectos_concluidos;

Delimiter $$
drop function if exists Insertar_proyectosc$$
create procedure Insertar_proyectosc(in id int,in nombre varchar(100),in titulo_comercial varchar(100),in fecha_de_finalizacion date,in fecha_de_lanzamiento date,in presupuesto_invertido double,in ganancias_totales double)
begin
update proyectos_concluidos set proyectos_concluidos = proyectos_concluidos - proyectos_concluidos where idProyectosc=id;
end
$$
call Insertar_proyectosc(1,5);
Delimiter $$

Delimiter $$
drop function if exists Mostrar_proyectosc$$
create function Mostrar_proyectosc()
returns int unsigned deterministic
begin
declare cantidad int unsigned;
set cantidad=(select count(*) from proyectos_concluidos);
return cantidad;
end
$$
call Mostrar_proyectosc();
Delimiter $$

Delimiter $$
drop procedure if exists Actualizar_proyectosc$$
create procedure Actualizar_proyectosc(in id int,in nombre varchar(100),in titulo_comercial varchar(100),in fecha_de_finalizacion date,in fecha_de_lanzamiento date,in presupuesto_invertido double,in ganancias_totales double)
begin
update proyectos_concluidos set proyectos_concluidos=proyectos_concluidos - proyectos_concluidos where idProyectosc=id;
end
$$
call Actualizar_proyectosc(1,5);
Delimiter $$

Delimiter $$
drop procedure if exists Eliminar_proyectosc$$
create procedure Eliminar_proyectosc(in id int)
begin
delete from proyectos_concluidos where idProyectosc=id;
end
$$
call Eliminar_proyectosc(1,5);
Delimiter $$