Delimiter $$
drop function if exists Insertar_cliente$$
create procedure Insertar_cliente(in id int,in apodo varchar(100),in nombre varchar(100),in apellido_paterno varchar(100),in apellido_materno varchar(100),in pais varchar(30),in direccion_email varchar(100),in telefono int,in contraseña varchar(100))
begin
update cliente set cliente = cliente - cliente where idCliente=id;
end
$$
call Insertar_cliente(1,5);
Delimiter $$

Delimiter $$
drop function if exists Mostrar_cliente$$
create function Mostrar_cliente()
returns int unsigned deterministic
begin
declare cantidad int unsigned;
set cantidad=(select count(*) from cliente);
return cantidad;
end
$$
call Mostrar_cliente();
Delimiter $$

Delimiter $$
drop procedure if exists Actualizar_cliente$$
create procedure Actualizar_cliente(in id int,in apodo varchar(100),in nombre varchar(100),in apellido_paterno varchar(100),in apellido_materno varchar(100),in pais varchar(30),in direccion_email varchar(100),in telefono int,in contraseña varchar(100))
begin
update cliente set cliente=cliente - cliente where idCliente=id;
end
$$
call Actualizar_cliente(1,5);
Delimiter $$

Delimiter $$
drop procedure if exists Eliminar_cliente$$
create procedure Eliminar_cliente(in id int)
begin
delete from cliente where idCliente=id;
end
$$
call Eliminar_cliente(1,5);
Delimiter $$

SELECT * FROM steam.tienda_de_juegos;

Delimiter $$
drop function if exists Insertar_tienda$$
create procedure Insertar_tienda(in id int,in catalogo_principal int,in lista_de_generos int,in juegos_propios int)
begin
update tienda_de_juegos set tienda_de_juegos = tienda_de_juegos - tienda_de_juegos where idTienda=id;
end
$$
call Insertar_tienda(1,5);
Delimiter $$

Delimiter $$
drop function if exists Mostrar_tienda$$
create function Mostrar_tienda()
returns int unsigned deterministic
begin
declare cantidad int unsigned;
set cantidad=(select count(*) from tienda_de_juegos);
return cantidad;
end
$$
call Mostrar_tienda();
Delimiter $$

Delimiter $$
drop procedure if exists Actualizar_tienda$$
create procedure Actualizar_tienda(in id int,in catalogo_principal int,in lista_de_generos int,in juegos_propios int)
begin
update tienda_de_juegos set tienda_de_juegos=tienda_de_juegos - tienda_de_juegos where idTienda=id;
end
$$
call Actualizar_tienda(1,5);
Delimiter $$

Delimiter $$
drop procedure if exists Eliminar_tienda$$
create procedure Eliminar_tienda(in id int)
begin
delete from tienda_de_juegos where idTienda=id;
end
$$
call Eliminar_tienda(1,5);
Delimiter $$

SELECT * FROM steam.empleado;

Delimiter $$
drop function if exists Insertar_empleado$$
create procedure Insertar_empleado(in id int,in nombre varchar(100),in apellido_paterno varchar(100),in apellido_materno varchar(100),in contraseña varchar(100),in area_de_trabajo varchar(100))
begin
update empleado set empleado = empleado - empleado where idEmpleado=id;
end
$$
call Insertar_empleado(1,5);
Delimiter $$

Delimiter $$
drop function if exists Mostrar_empleado$$
create function Mostrar_empleado()
returns int unsigned deterministic
begin
declare cantidad int unsigned;
set cantidad=(select count(*) from empleado);
return cantidad;
end
$$
call Mostrar_empleado();
Delimiter $$

Delimiter $$
drop procedure if exists Actualizar_empleado$$
create procedure Actualizar_empleado(in id int,in nombre varchar(100),in apellido_paterno varchar(100),in apellido_materno varchar(100),in contraseña varchar(100),in area_de_trabajo varchar(100))
begin
update empleado set empleado=empleado - empleado where idEmpleado=id;
end
$$
call Actualizar_empleado(1,5);
Delimiter $$

Delimiter $$
drop procedure if exists Eliminar_empleado$$
create procedure Eliminar_empleado(in id int)
begin
delete from empleado where idEmpleado=id;
end
$$
call Eliminar_empleado(1,5);
Delimiter $$

SELECT * FROM steam.personal_de_tienda;

Delimiter $$
drop function if exists Insertar_personalt$$
create procedure Insertar_personalt(in id int,in horas_de_trabajo int,in sueldo_semanal int,in fecha_de_contratacion date,in fecha_de_finalizacion date)
begin
update personal_de_tienda set personal_de_tienda = personal_de_tienda - personal_de_tienda where idPersonalt=id;
end
$$
call Insertar_personalt(1,5);
Delimiter $$

Delimiter $$
drop function if exists Mostrar_personalt$$
create function Mostrar_personalt()
returns int unsigned deterministic
begin
declare cantidad int unsigned;
set cantidad=(select count(*) from personal_de_tienda);
return cantidad;
end
$$
call Mostrar_personalt();
Delimiter $$

Delimiter $$
drop procedure if exists Actualizar_personalt$$
create procedure Actualizar_personalt(in id int,in horas_de_trabajo int,in sueldo_semanal int,in fecha_de_contratacion date,in fecha_de_finalizacion date)
begin
update personal_de_tienda set personal_de_tienda=personal_de_tienda - personal_de_tienda where idPersonalt=id;
end
$$
call Actualizar_personalt(1,5);
Delimiter $$

Delimiter $$
drop procedure if exists Eliminar_personalt$$
create procedure Eliminar_personalt(in id int)
begin
delete from personal_de_tienda where idPersonalt=id;
end
$$
call Eliminar_personalt(1,5);
Delimiter $$

SELECT * FROM steam.personal_de_desarrollo;

Delimiter $$
drop function if exists Insertar_personald$$
create procedure Insertar_personald(in id int,in horas_de_trabajo int,in sueldo_semanal int,in fecha_de_contratacion date,in fecha_de_finalizacion date,in especializacion varchar(100))
begin
update personal_de_desarrollo set personal_de_desarrollo = personal_de_desarrollo - personal_de_desarrollo where idPersonald=id;
end
$$
call Insertar_personald(1,5);
Delimiter $$

Delimiter $$
drop function if exists Mostrar_personaltd$$
create function Mostrar_personald()
returns int unsigned deterministic
begin
declare cantidad int unsigned;
set cantidad=(select count(*) from personal_de_desarrollo);
return cantidad;
end
$$
call Mostrar_personald();
Delimiter $$

Delimiter $$
drop procedure if exists Actualizar_personald$$
create procedure Actualizar_personald(in id int,in horas_de_trabajo int,in sueldo_semanal int,in fecha_de_contratacion date,in fecha_de_finalizacion date,in especializacion varchar(100))
begin
update personal_de_desarrollo set personal_de_desarrollo=personal_de_desarrollo - personal_de_desarrollo where idPersonald=id;
end
$$
call Actualizar_personald(1,5);
Delimiter $$

Delimiter $$
drop procedure if exists Eliminar_personald$$
create procedure Eliminar_personald(in id int)
begin
delete from personal_de_desarrollo where idPersonald=id;
end
$$
call Eliminar_personald(1,5);
Delimiter $$

SELECT * FROM steam.juego;

Delimiter $$
drop function if exists Insertar_juego$$
create procedure Insertar_juego(in id int,in titulo varchar(100),in fecha_de_lanzamiento date,in desarrollador varchar(100),in editor varchar(100),in precio_de_compra double)
begin
update juego set juego = juego - juego where idJuego=id;
end
$$
call Insertar_juego(1,5);
Delimiter $$

Delimiter $$
drop function if exists Mostrar_juego$$
create function Mostrar_juego()
returns int unsigned deterministic
begin
declare cantidad int unsigned;
set cantidad=(select count(*) from juego);
return cantidad;
end
$$
call Mostrar_juego();
Delimiter $$

Delimiter $$
drop procedure if exists Actualizar_juego$$
create procedure Actualizar_juego(in id int,in titulo varchar(100),in fecha_de_lanzamiento date,in desarrollador varchar(100),in editor varchar(100),in precio_de_compra double)
begin
update juego set juego=juego - juego where idJuego=id;
end
$$
call Actualizar_juego(1,5);
Delimiter $$

Delimiter $$
drop procedure if exists Eliminar_juego$$
create procedure Eliminar_juego(in id int)
begin
delete from juego where idJuego=id;
end
$$
call Eliminar_juego(1,5);
Delimiter $$

SELECT * FROM steam.compra;

Delimiter $$
drop function if exists Insertar_compra$$
create procedure Insertar_compra(in id int,in titulo_de_juego varchar(100),in precio_de_compra double,in codigo_de_tarjeta int)
begin
update compra set compra = compra - compra where idCompra=id;
end
$$
call Insertar_compra(1,5);
Delimiter $$

Delimiter $$
drop function if exists Mostrar_compra$$
create function Mostrar_compra()
returns int unsigned deterministic
begin
declare cantidad int unsigned;
set cantidad=(select count(*) from compra);
return cantidad;
end
$$
call Mostrar_compra();
Delimiter $$

Delimiter $$
drop procedure if exists Actualizar_compra$$
create procedure Actualizar_compra(in id int,in titulo_de_juego varchar(100),in precio_de_compra double,in codigo_de_tarjeta int)
begin
update compra set compra=compra - compra where idCompra=id;
end
$$
call Actualizar_compra(1,5);
Delimiter $$

Delimiter $$
drop procedure if exists Eliminar_compra$$
create procedure Eliminar_compra(in id int)
begin
delete from compra where idCompra=id;
end
$$
call Eliminar_compra(1,5);
Delimiter $$

SELECT * FROM steam.catalogo_principal;

Delimiter $$
drop function if exists Insertar_catalogop$$
create procedure Insertar_catalogop(in id int,in titulo varchar(100),in genero varchar(100),in fecha_de_lanzamiento date,in desarrollador varchar(100),in editor varchar(100),in precio_de_compra double)
begin
update catalogo_principal set catalogo_principal=catalogo_principal - catalogo_principal where idCatalogop=id;
end
$$
call Insertar_catalogop(1,5);
Delimiter $$

Delimiter $$
drop function if exists Mostrar_catalogop$$
create function Mostrar_catalogop()
returns int unsigned deterministic
begin
declare cantidad int unsigned;
set cantidad=(select count(*) from catalogo_principal);
return cantidad;
end
$$
call Mostrar_catalogop();
Delimiter $$

Delimiter $$
drop procedure if exists Actualizar_catalogop$$
create procedure Actualizar_catalogop(in id int,in titulo varchar(100),in genero varchar(100),in fecha_de_lanzamiento date,in desarrollador varchar(100),in editor varchar(100),in precio_de_compra double)
begin
update catalogo_principal set catalogo_principal=catalogo_principal - catalogo_principal where idCatalogop=id;
end
$$
call Actualizar_catalogop(1,5);
Delimiter $$

Delimiter $$
drop procedure if exists Eliminar_catalogop$$
create procedure Eliminar_catalogop(in id int)
begin
delete from catalogo_principal where idCatalogop=id;
end
$$
call Eliminar_catalogop(1,5);
Delimiter $$

SELECT * FROM steam.lista_de_generos;

Delimiter $$
drop function if exists Insertar_listag$$
create procedure Insertar_listag(in id int,in tipo_de_genero varchar(100),in cantidad_de_juegos int)
begin
update lista_de_generos set lista_de_generos = lista_de_generos - lista_de_generos where idListag=id;
end
$$
call Insertar_listag(1,5);
Delimiter $$

Delimiter $$
drop function if exists Mostrar_listag$$
create function Mostrar_listag()
returns int unsigned deterministic
begin
declare cantidad int unsigned;
set cantidad=(select count(*) from lista_de_generos);
return cantidad;
end
$$
call Mostrar_listag();
Delimiter $$

Delimiter $$
drop procedure if exists Actualizar_listag$$
create procedure Actualizar_listag(in id int,in tipo_de_genero varchar(100),in cantidad_de_juegos int)
begin
update lista_de_generos set lista_de_generos=lista_de_generos - lista_de_generos where idListag=id;
end
$$
call Actualizar_listag(1,5);
Delimiter $$

Delimiter $$
drop procedure if exists Eliminar_listag$$
create procedure Eliminar_listag(in id int)
begin
delete from lista_de_generos where idListag=id;
end
$$
call Eliminar_listag(1,5);
Delimiter $$

SELECT * FROM steam.juegos_propios;

Delimiter $$
drop function if exists Insertar_juegosp$$
create procedure Insertar_juegosp(in id int,in titulo varchar(100),in fecha_de_lanzamiento date,in desarrollador varchar(100),in editor varchar(100),in precio_de_compra double)
begin
update juegos_propios set juegos_propios = juegos_propios - juegos_propios where idJuegosp=id;
end
$$
call Insertar_juegosp(1,5);
Delimiter $$

Delimiter $$
drop function if exists Mostrar_juegosp$$
create function Mostrar_juegosp()
returns int unsigned deterministic
begin
declare cantidad int unsigned;
set cantidad=(select count(*) from juegos_propios);
return cantidad;
end
$$
call Mostrar_juegosp();
Delimiter $$

Delimiter $$
drop procedure if exists Actualizar_juegosp$$
create procedure Actualizar_juegosp(in id int,in titulo varchar(100),in fecha_de_lanzamiento date,in desarrollador varchar(100),in editor varchar(100),in precio_de_compra double)
begin
update juegos_propios set juegos_propios=juegos_propios - juegos_propios where idJuegosp=id;
end
$$
call Actualizar_juegosp(1,5);
Delimiter $$

Delimiter $$
drop procedure if exists Eliminar_juegosp$$
create procedure Eliminar_juegosp(in id int)
begin
delete from juegos_propios where idJuegosp=id;
end
$$
call Eliminar_juegosp(1,5);
Delimiter $$

SELECT * FROM steam.departamentos_de_trabajo;

Delimiter $$
drop function if exists Insertar_departamento$$
create procedure Insertar_departamento(in id int,in nombre varchar(100),in presupuesto_asignado double,in gastos double)
begin
update departamentos_de_trabajo set departamentos_de_trabajo = departamentos_de_trabajo - departamentos_de_trabajo where idDepartamento=id;
end
$$
call Insertar_departamento(1,5);
Delimiter $$

Delimiter $$
drop function if exists Mostrar_departamento$$
create function Mostrar_departamento()
returns int unsigned deterministic
begin
declare cantidad int unsigned;
set cantidad=(select count(*) from departamentos_de_trabajo);
return cantidad;
end
$$
call Mostrar_departamento();
Delimiter $$

Delimiter $$
drop procedure if exists Actualizar_departamento$$
create procedure Actualizar_departamento(in id int,in nombre varchar(100),in presupuesto_asignado double,in gastos double)
begin
update departamentos_de_trabajo set departamentos_de_trabajo=departamentos_de_trabajo - departamentos_de_trabajo where idDepartamento=id;
end
$$
call Actualizar_departamento(1,5);
Delimiter $$

Delimiter $$
drop procedure if exists Eliminar_departamento$$
create procedure Eliminar_departamento(in id int)
begin
delete from departamentos_de_trabajo where idDepartamento=id;
end
$$
call Eliminar_departamento(1,5);
Delimiter $$

SELECT * FROM steam.proyectos_actuales;

Delimiter $$
drop function if exists Insertar_proyectosa$$
create procedure Insertar_proyectosa(in id int,in nombre varchar(100),in presupuesto_asignado double,in tiempo_estimado double)
begin
update proyectos_actuales set proyectos_actuales = proyectos_actuales - proyectos_actuales where idProyectosa=id;
end
$$
call Insertar_proyectosa(1,5);
Delimiter $$

Delimiter $$
drop function if exists Mostrar_proyectosa$$
create function Mostrar_proyectosa()
returns int unsigned deterministic
begin
declare cantidad int unsigned;
set cantidad=(select count(*) from proyectos_actuales);
return cantidad;
end
$$
call Mostrar_proyectosa();
Delimiter $$

Delimiter $$
drop procedure if exists Actualizar_proyectosa$$
create procedure Actualizar_proyectosa(in id int,in nombre varchar(100),in presupuesto_asignado double,in tiempo_estimado  double)
begin
update proyectos_actuales set proyectos_actuales=proyectos_actuales - proyectos_actuales where idProyectosa=id;
end
$$
call Actualizar_proyectosa(1,5);
Delimiter $$

Delimiter $$
drop procedure if exists Eliminar_proyectosa$$
create procedure Eliminar_proyectosa(in id int)
begin
delete from proyectos_actuales where idProyectosa=id;
end
$$
call Eliminar_proyectosa(1,5);
Delimiter $$

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