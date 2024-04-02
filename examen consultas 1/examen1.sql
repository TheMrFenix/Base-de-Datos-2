select apellido1, apellido2, nombre from persona order by apellido1,apellido2,nombre;

select nombre,apellido1,apellido2,fecha_nacimiento,tipo from persona where fecha_nacimiento > ('1999-1-1') and fecha_nacimiento < ('1999-12-29');

select a.nombre,g.nombre from asignatura a join grado g on a.id_grado=g.id where g.nombre = ('Grado en Ingeniería Informática (Plan 2015)');