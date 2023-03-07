/*
################################## PARTE No.1 ##################################
Cree el código DDL necesario para las siguientes tablas, tome en cuenta las siguientes
restricciones para crear los constraints necesarios para integridad de entidades,
integridad de dominio, integridad de referencias.

	1. El código del curso está formado por dos caracteres alfa numéricos en mayúsculas,
		un guion medio y dos números los cuales indican el número de semestre.
	2. El código de departamento es una llave foránea que al eliminar un código de
		departamento, el curso debe colocar su llave foránea en nulo, y al actualizar el
		código del departamento debe actualizarse la llave foránea.
	3. El código de ISBN son 13 números, de los cuales ninguno de los dos primeros
		pueden ser cero o uno.
	4. El año del libro no puede ser menor del año 2000 y mayor del año actual.
	5. La edición del libro debe ser mayor a la 3era y menor a las 6ta.
	6. Si se elimina un curso o actualiza un curso, se debe realizar la misma acción con el
		libro.

Posteriormente a esto inserte 47 cursos y 150 libros con data generada, recuerde que no
es necesario que los nombres necesariamente tengan sentido, sin embargo asegúrese de
que los inserts cumplan con los campos que tiene restricciones asociadas.
Para entregar este ejercicio, deberá mostrar el código SQL del DDL con sus respectivas
restricciones y el código de todos los inserts.
*/

DROP database LAB_2;

Create database LAB_2;

use LAB_2;

DROP TABLE departamento;

create table departamento (
id int  NOT NULL auto_increment , -- ID CURSO
nomb_depar	VARCHAR(5),	-- codigo
CONSTRAINT depar_pk PRIMARY KEY (id)
);

insert into departamento (id, nomb_depar) values (1, 'LUTKS');
insert into departamento (id, nomb_depar) values (2, 'RFZDQ');
insert into departamento (id, nomb_depar) values (3, 'NBFLA');
insert into departamento (id, nomb_depar) values (4, 'IBXFZ');
insert into departamento (id, nomb_depar) values (5, 'DBBAM');
insert into departamento (id, nomb_depar) values (6, 'HBBUR');
insert into departamento (id, nomb_depar) values (7, 'HUKZP');
insert into departamento (id, nomb_depar) values (8, 'ETQFB');
insert into departamento (id, nomb_depar) values (9, 'NKYRM');
insert into departamento (id, nomb_depar) values (10, 'RCBEW');

DROP TABLE CURSO;

create table CURSO (
id int  NOT NULL auto_increment , -- ID CURSO
codigo	VARCHAR(5),	-- codigo
nombre	 VARCHAR(25),	-- nombre
descripcion	 TEXT,	-- descripcion
codigo_departamento int, -- fk departamento 
CHECK (codigo RLIKE "[A-Z]{2}\-[0-9]{2}"),
CONSTRAINT curso_pk PRIMARY KEY (id),
CONSTRAINT constra_codigo UNIQUE (codigo),
CONSTRAINT depar_fk FOREIGN KEY (codigo_departamento) REFERENCES departamento (id)
);

insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('PB-09', 'Geertsen', 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', 1);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('CK-03', 'Pyper', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', 5);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('YN-93', 'Colleton', 'In hac habitasse platea dictumst.', 1);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('JD-71', 'Darcey', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue.', 10);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('PW-07', 'Bogges', 'Quisque id justo sit amet sapien dignissim vestibulum.', 4);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('BG-36', 'Gradwell', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 7);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('PH-38', 'Brixey', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim.', 4);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('QZ-84', 'Mathis', 'Duis at velit eu est congue elementum.', 9);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('CQ-76', 'Jenner', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis.', 7);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('OL-83', 'St Clair', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 9);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('SO-03', 'Jirasek', 'Duis consequat dui nec nisi volutpat eleifend.', 9);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('OA-13', 'Sivills', 'Suspendisse accumsan tortor quis turpis.', 4);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('VP-51', 'Bilyard', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 10);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('VE-00', 'Diggins', 'Nulla suscipit ligula in lacus.', 7);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('MN-12', 'Streeting', 'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.', 5);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('OD-41', 'Soame', 'Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 1);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('PJ-24', 'Fynn', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 1);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('IZ-81', 'Vosper', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 7);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('QU-17', 'Sidary', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', 1);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('ZO-60', 'Wimpey', 'Etiam faucibus cursus urna. Ut tellus.', 10);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('CY-46', 'Jambrozek', 'Nunc rhoncus dui vel sem. Sed sagittis.', 5);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('VT-58', 'Harefoot', 'Nulla tellus. In sagittis dui vel nisl.', 4);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('DC-27', 'Benallack', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 8);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('YZ-08', 'Gifkins', 'Phasellus sit amet erat.', 4);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('JM-59', 'Lauritsen', 'Suspendisse potenti.', 4);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('VB-76', 'Fishenden', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 6);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('FA-06', 'Litherborough', 'Curabitur in libero ut massa volutpat convallis.', 5);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('CJ-47', 'Newman', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 1);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('AW-59', 'Dugood', 'Duis aliquam convallis nunc.', 2);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('WX-18', 'Dannel', 'In quis justo.', 6);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('XA-33', 'Ottley', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 3);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('QP-69', 'Lancetter', 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.', 5);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('MX-10', 'O''Reilly', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', 2);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('WX-11', 'St. Leger', 'Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.', 2);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('IF-45', 'Faughey', 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', 7);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('VV-45', 'Masham', 'Praesent blandit lacinia erat.', 1);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('VF-13', 'Cowderoy', 'Ut at dolor quis odio consequat varius.', 9);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('NQ-60', 'Rivalland', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna.', 6);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('UW-18', 'Tigwell', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', 6);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('VE-64', 'Wapol', 'Pellentesque ultrices mattis odio. Donec vitae nisi.', 10);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('AI-93', 'Fowler', 'Sed ante.', 3);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('WL-30', 'Angeli', 'Nullam porttitor lacus at turpis.', 1);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('UY-80', 'Rosone', 'Nulla tempus.', 9);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('UM-30', 'Cheal', 'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', 8);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('ED-74', 'Dany', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.', 9);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('CL-65', 'Whiteman', 'Proin eu mi. Nulla ac enim.', 5);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('EN-89', 'Huntington', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 1);
insert into CURSO (codigo, nombre, descripcion, codigo_departamento) values ('XP-94', 'Perotti', 'Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.', 9);




create table LIBRO (
ISBN VARCHAR(13), -- ISBN 13 NUMEROS
nombre	VARCHAR(50),	-- nombre
autor	 VARCHAR(30),	-- autor
edicion	 int,	-- edicion
editorial VARCHAR(40), -- kf 
anio int, -- año
codigo_curso int, -- codigo_curso
CHECK (ISBN RLIKE "[2-9]{2}+[0-9]{11}"),
CHECK (anio > 2000 AND anio < 2023),
CHECK (edicion > 3 AND edicion < 6 ),
CONSTRAINT libro_pk PRIMARY KEY (ISBN),
CONSTRAINT libro_fk FOREIGN KEY (codigo_curso) REFERENCES CURSO (id)  ON DELETE SET NULL
);










/*
################################## PARTE No.2 ##################################
Parte #2:
Corra el siguiente código de MySQL, posteriormente realice los queries que se le solicitan
en la parte #3:
*/

CREATE DATABASE RecursosHumanos;

USE RecursosHumanos;

CREATE TABLE DEPARTAMENTO (
 ID INT NOT NULL,
 NOMBRE VARCHAR(50),
 LOCALIDAD VARCHAR(50),
 CONSTRAINT DEPARTAMENTOS_PK
 PRIMARY KEY (ID)
);

INSERT INTO DEPARTAMENTO (ID, NOMBRE, LOCALIDAD)
VALUES (1, 'INFORMATICA', 'BILBAO');
INSERT INTO DEPARTAMENTO (ID, NOMBRE, LOCALIDAD)
VALUES (2, 'INVESTIGACION', 'MADRID');
INSERT INTO DEPARTAMENTO (ID, NOMBRE, LOCALIDAD)
VALUES (3, 'VENTAS', 'BARCELONA');
INSERT INTO DEPARTAMENTO (ID, NOMBRE, LOCALIDAD)
VALUES (4, 'PRODUCCION', 'VALENCIA');
COMMIT ;




CREATE TABLE RANGO_SUELDO (
 GRADO INT PRIMARY KEY ,
 SUELDO_MIN DECIMAL(9,2),
 SUELDO_MAX DECIMAL(9,2)
);

INSERT INTO RANGO_SUELDO (GRADO, SUELDO_MIN, SUELDO_MAX)
VALUES (1, 700, 1200);
INSERT INTO RANGO_SUELDO (GRADO, SUELDO_MIN, SUELDO_MAX)
VALUES (2, 1201, 1400);
INSERT INTO RANGO_SUELDO (GRADO, SUELDO_MIN, SUELDO_MAX)
VALUES (3, 1401, 2000);
INSERT INTO RANGO_SUELDO (GRADO, SUELDO_MIN, SUELDO_MAX)
VALUES (4, 2001, 3000);
INSERT INTO RANGO_SUELDO (GRADO, SUELDO_MIN, SUELDO_MAX)
VALUES (5, 3001, 9999);
COMMIT ;



DROP TABLE EMPLEADO;

CREATE TABLE EMPLEADO (
 ID INT NOT NULL,
 NOMBRE VARCHAR(30),
 APELLIDOS VARCHAR(60),
 TELEFONO VARCHAR(25),
 EMAIL VARCHAR(50),
 CARGO VARCHAR(20),
 JEFE_ID INT,
 FECHA_ALTA DATE,
 SUELDO DECIMAL(9,2),
 COMISION DECIMAL(9,2),
 DEPARTAMENTO_ID INT NOT NULL,
 CONSTRAINT EMPLEADOS_PK
 PRIMARY KEY (ID),
 CONSTRAINT DEPARTAMENTO_ID_FK
 FOREIGN KEY (DEPARTAMENTO_ID) REFERENCES DEPARTAMENTO (ID),
 CONSTRAINT EMAIL_CHK
 CHECK ( EMAIL REGEXP '^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$'),
 CONSTRAINT TELEFONO_CHK
 CHECK ( TELEFONO REGEXP '^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-[[:space:]]\./0-9]*$' )
 );
 
-- DML. Inserción de datos:
INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, EMAIL, TELEFONO, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (6, 'INES', 'FERNANDEZ SANCHEZ', 'fsanchez@gmail.com','+50255552612',
'PRESIDENTE', NULL, '1991-11-17', 5000, NULL, 1);
INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (4, 'ESTHER', 'PEÑA MATA', '+34937377761','epena@gmail.com','DIRECTOR',
6,str_to_date('01/05/1991', '%d/%m/%Y'), 2850, NULL, 3);
INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (5, 'DANIEL', 'LOPEZ LEON', '+34937377780','dlopez@gmail.com','DIRECTOR',
6,str_to_date('09/06/1991', '%d/%m/%Y'), 2450, NULL, 1);
INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (1, 'CARLOS', 'ALONSO GARCIA',
'34937377770','carlos.alonso@gmail.com','COMERCIAL', 4,
str_to_date('20/02/1991', '%d/%m/%Y'), 1600, 30, 3);
INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (2, 'ANDRES', 'GOMEZ SEGUNDO', '+(34) 937-376-525',
'andres.gomez@gmail.com', 'COMERCIAL', 4, str_to_date('22/02/1991', '%d/%m/%Y'),
1250, 50, 3);
INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (3, 'ANA', 'HERRANZ CIFUENTES', '+34937376523','herranz.ana@gmail.com',
'COMERCIAL', 4,str_to_date('28/09/1991', '%d/%m/%Y'), 1250, 140, 3);
INSERT INTO EMPLEADO (ID, NOMBRE, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID,
FECHA_ALTA, SUELDO, COMISION, DEPARTAMENTO_ID)
VALUES (7, 'TOMAS', 'CALLEJA ARCAZ','+34937376541','tomas.calleja@gmail.com',
'COMERCIAL', 4, str_to_date( '08/09/1991', '%d/%m/%Y'), 1500, 0, 3);
COMMIT ;


/*
################################## PARTE No.3 ##################################
A continuación, escriba las siguientes consultas, de ser posible de más de una forma.
*/
/*
--------------------------------- INICIO PREGUNTA 1--------------------------------
Considerando las reglas de normalización, ¿Qué mejoras podría realizar en las tablas?
*/

-- En la tabla de departamentos, se podría separar en:
-- una tabla para el nombre del departamento (informatica, investigacio.. etc.)
-- una tabla para la localidad (Bilbao, Madrid, Barcelona)

-- En la tabla de empleados, se podría separar en: 
-- solo empleados con los campos (nombre, apellido, telefono, correo, fecha de alta, sueldo y comision)
-- otra tabla de cargo con los campos (cargo, id jefe, id_empleado)
-- otra tabla de que relacione el departamento en el que se encuentra el empleado



/*
--------------------------------- FIN PREGUNTA 1--------------------------------
*/

/*
--------------------------------- INICIO PREGUNTA 2--------------------------------
Considerando las reglas de normalización, ¿Qué mejoras podría realizar en las tablas?
¿Qué registro de empleado falla y por qué? ¿Cómo se corrige?
*/

-- se encontraron varios, pero clasificados en dos tipos:

-- Primero: dentro del usuario, se uncluyeron carateres que no eran validos, por lo que solo se 
-- cambio el caracter por uno valido

-- Segundo: habian usuarios repetidos o con el mismo ID, si solo es el ID, entonces solo se corrige
-- si son todos los datos iguales, se descarta porque ya se agrego el usuario.

/*
--------------------------------- FIN PREGUNTA 2--------------------------------
*/

/*
--------------------------------- INICIO PREGUNTA 3--------------------------------
Obtener los apellidos del empleado
*/

SELECT APELLIDOS FROM recursoshumanos.empleado;


/*
--------------------------------- FIN PREGUNTA 3--------------------------------
*/

/*
--------------------------------- INICIO PREGUNTA 4--------------------------------
Obtener los apellidos del empleado sin repetición
*/

SELECT APELLIDOS FROM recursoshumanos.empleado group by APELLIDOS;


/*
--------------------------------- FIN PREGUNTA 4--------------------------------
*/

/*
--------------------------------- INICIO PREGUNTA 5--------------------------------
Obtener todos los datos de los empleados apellidados López
*/

SELECT * FROM recursoshumanos.empleado WHERE APELLIDOS REGEXP "LOPEZ";


/*
--------------------------------- FIN PREGUNTA 5--------------------------------
*/

/*
--------------------------------- INICIO PREGUNTA 6 --------------------------------
6. Obtener todos los datos del empleado con apellido López o Peña
*/


SELECT * FROM recursoshumanos.empleado WHERE APELLIDOS REGEXP "LOPEZ"
UNION
SELECT * FROM recursoshumanos.empleado WHERE APELLIDOS REGEXP "PEÑA";
/*
--------------------------------- FIN PREGUNTA 6--------------------------------
*/

/*
--------------------------------- INICIO PREGUNTA 7 --------------------------------
7. Obtener los datos del empleado que trabaja en el departamento de informática.
*/

SELECT recursoshumanos.departamento.NOMBRE AS DEPARTAMENTO, recursoshumanos.empleado.NOMBRE AS NOMBRE_EMPLEADO, APELLIDOS, TELEFONO, EMAIL, CARGO, JEFE_ID, FECHA_ALTA, SUELDO, COMISION FROM recursoshumanos.departamento
inner join recursoshumanos.empleado on recursoshumanos.departamento.ID=recursoshumanos.empleado.DEPARTAMENTO_ID 
WHERE recursoshumanos.departamento.NOMBRE="INFORMATICA";



/*
--------------------------------- FIN PREGUNTA 7--------------------------------
*/

/*
--------------------------------- INICIO PREGUNTA 8 --------------------------------
8. Obtener los datos del empleado cuyo nombre comience por I
*/

select * from recursoshumanos.empleado where recursoshumanos.empleado.NOMBRE LIKE 'I%';

/*
--------------------------------- FIN PREGUNTA 8--------------------------------
*/

/*
--------------------------------- INICIO PREGUNTA 9 --------------------------------
9. Obtener el nombre del departamento y el número de empleados que tiene.
*/
SELECT recursoshumanos.departamento.NOMBRE AS DEPARTAMENTO, COUNT(recursoshumanos.empleado.ID) AS CANTIDAD_EMPLEADOS FROM recursoshumanos.departamento
inner join recursoshumanos.empleado on recursoshumanos.empleado.DEPARTAMENTO_ID=recursoshumanos.departamento.ID
group by DEPARTAMENTO;


/*
--------------------------------- FIN PREGUNTA 9--------------------------------
*/


/*
--------------------------------- INICIO PREGUNTA 10 --------------------------------
10. Consultar los diferentes cargos desempeñados en la empresa.
*/


SELECT CARGO FROM recursoshumanos.empleado group by CARGO;

/*
--------------------------------- FIN PREGUNTA 10--------------------------------
*/


/*
--------------------------------- INICIO PREGUNTA 11 --------------------------------
11. Listar los empleados como sigue: LOPEZ PEREZ, CARLOS: es PRESIDENTE
*/



/*
--------------------------------- FIN PREGUNTA 11--------------------------------
*/

/*
--------------------------------- INICIO PREGUNTA 12 --------------------------------
12. Mostrar el nombre, apellidos, sueldo y comisión del empleado que tiene jefe, y su
comisión es superior a 150 €.
*/

select NOMBRE, APELLIDOS, SUELDO, COMISION from recursoshumanos.empleado where recursoshumanos.empleado.JEFE_ID IS NOT NULL AND COMISION>150;

/*
--------------------------------- FIN PREGUNTA 12--------------------------------
*/


/*
--------------------------------- INICIO PREGUNTA 13 --------------------------------
13. Obtener los empleados que no ejercen de comercial y cuyos nombres contienen la letra N.
*/

select NOMBRE, APELLIDOS from recursoshumanos.empleado where CARGO != "COMERCIAL" AND NOMBRE REGEXP "N";


/*
--------------------------------- FIN PREGUNTA 13--------------------------------
*/


/*
--------------------------------- INICIO PREGUNTA 14 --------------------------------
14. De los empleados que tienen comisión, obtener el nombre, sueldo y comisión, ordenados
por sueldo de mayor a menor.
*/

SELECT NOMBRE, APELLIDOS, SUELDO, COMISION FROM recursoshumanos.empleado 
order by SUELDO asc;


/*
--------------------------------- FIN PREGUNTA 14--------------------------------
*/


/*
--------------------------------- INICIO PREGUNTA 15 --------------------------------
15. Ordenar a los empleados por sus apellidos y nombres.
*/

SELECT APELLIDOS, NOMBRE FROM recursoshumanos.empleado
ORDER BY APELLIDOS ASC, NOMBRE ASC;


/*
--------------------------------- FIN PREGUNTA 15--------------------------------
*/


/*
--------------------------------- INICIO PREGUNTA 16 --------------------------------
16. Obtener el nombre, sueldo anual y fecha de alta de los empleados que no tienen
comisión, ordenados por fecha de alta en la empresa.
*/

SELECT APELLIDOS, NOMBRE, SUELDO*12 AS SUELDO_ANUAL, FECHA_ALTA FROM recursoshumanos.empleado
WHERE COMISION IS NULL
ORDER BY FECHA_ALTA DESC;

/*
--------------------------------- FIN PREGUNTA 16--------------------------------
*/


/*
--------------------------------- INICIO PREGUNTA 17 --------------------------------
17. Mostrar el nombre y sueldo de los empleados incrementados en un 10% y ordenados por
nombre y apellidos.
*/

SELECT NOMBRE, APELLIDOS, SUELDO*1.1 AS AUMENTO_10 FROM recursoshumanos.empleado
order by NOMBRE ASC, APELLIDOS ASC; 


/*
--------------------------------- FIN PREGUNTA 17--------------------------------
*/

/*
--------------------------------- INICIO PREGUNTA 18 --------------------------------
18. Mostrar el nombre y fecha de alta de cada empleado, ordenado por fecha de entrada
como sigue: Fecha de entrada (como título) Ejemplo: ‘Carlos Alonso García empezó a
trabajar el 20 de febrero de 1991’
*/


SELECT concat_ws(" ", NOMBRE, APELLIDOS, "empezo a trabajar el dia", day(FECHA_ALTA),"de", month(FECHA_ALTA),"de", year(FECHA_ALTA) ) AS FECHA_ENTRADA FROM recursoshumanos.empleado; 

/*
--------------------------------- FIN PREGUNTA 18--------------------------------
*/


/*
--------------------------------- INICIO PREGUNTA 19 --------------------------------
19. Obtener el nombre de los comerciales, la comisión, el sueldo mensual y el sueldo
incrementado como sigue: si la comisión es menor que 50 €, aumentar un 25%; y si es
igual o superior, aumentar un 12%.
*/

SELECT NOMBRE, APELLIDOS, COMISION, SUELDO, IF( COMISION < 50, SUELDO*1.25, SUELDO*1.12) AS AUMENTO FROM recursoshumanos.empleado
WHERE CARGO="COMERCIAL";


/*
--------------------------------- FIN PREGUNTA 19--------------------------------
*/


/*
--------------------------------- INICIO PREGUNTA 20 --------------------------------
20. Mostrar la localidad, nombre y sueldo del empleado cuyo grado es 2 o 3.
*/


SELECT recursoshumanos.departamento.LOCALIDAD, recursoshumanos.empleado.NOMBRE, recursoshumanos.empleado.APELLIDOS, recursoshumanos.empleado.SUELDO, (SELECT GRADO FROM recursoshumanos.rango_sueldo WHERE recursoshumanos.empleado.SUELDO BETWEEN SUELDO_MIN AND SUELDO_MAX ) AS VALOR_RANGO FROM recursoshumanos.empleado
INNER JOIN recursoshumanos.departamento ON  recursoshumanos.departamento.ID=recursoshumanos.empleado.DEPARTAMENTO_ID
WHERE (SELECT GRADO FROM recursoshumanos.rango_sueldo WHERE recursoshumanos.empleado.SUELDO BETWEEN SUELDO_MIN AND SUELDO_MAX )=2 OR (SELECT GRADO FROM recursoshumanos.rango_sueldo WHERE recursoshumanos.empleado.SUELDO BETWEEN SUELDO_MIN AND SUELDO_MAX )=3;


/*
--------------------------------- FIN PREGUNTA 20--------------------------------
*/


/*
--------------------------------- INICIO PREGUNTA 21 --------------------------------
21. Mostrar el nombre de los departamentos cuyos empleados tienen comisión o su sueldo
anual es superior a 18.000 €.
*/

SELECT recursoshumanos.departamento.NOMBRE FROM recursoshumanos.departamento
INNER JOIN recursoshumanos.empleado ON recursoshumanos.empleado.DEPARTAMENTO_ID=recursoshumanos.departamento.ID
WHERE COMISION IS NOT NULL OR SUELDO*12>18000
group by recursoshumanos.departamento.NOMBRE;

/*
--------------------------------- FIN PREGUNTA 21--------------------------------
*/


/*
--------------------------------- INICIO PREGUNTA 22 --------------------------------
22. Calcular el número de empleados del departamento de VENTAS.
*/

SELECT recursoshumanos.departamento.NOMBRE, count(recursoshumanos.empleado.NOMBRE) AS CANTIDAD_EMPLEADOS FROM recursoshumanos.departamento
INNER JOIN recursoshumanos.empleado ON recursoshumanos.empleado.DEPARTAMENTO_ID=recursoshumanos.departamento.ID
WHERE recursoshumanos.departamento.NOMBRE="VENTAS";


/*
--------------------------------- FIN PREGUNTA 22--------------------------------
*/


/*
--------------------------------- INICIO PREGUNTA 23 --------------------------------
23. Calcular la comisión media de los empleados, excluyendo al presidente y suponiendo que
todos los empleados cobran al menos una comisión de o €.
*/

SELECT AVG(COALESCE(COMISION, 0)) AS COMISION_MEDIA FROM recursoshumanos.empleado
WHERE CARGO!="PRESIDENTE";

/*
--------------------------------- FIN PREGUNTA 23--------------------------------
*/


/*
--------------------------------- INICIO PREGUNTA 24 --------------------------------
24. Calcular el sueldo máximo de los empleados de cada departamento siempre que el
mínimo sueldo del departamento sea superior a 780 €.
*/

SELECT recursoshumanos.departamento.NOMBRE, MAX(recursoshumanos.empleado.SUELDO) AS SUELDO_MAXIMO_EMPLEADOS FROM recursoshumanos.departamento
INNER JOIN recursoshumanos.empleado ON recursoshumanos.empleado.DEPARTAMENTO_ID=recursoshumanos.departamento.ID
group by recursoshumanos.departamento.NOMBRE
HAVING MIN(recursoshumanos.empleado.SUELDO)>780;

/*
--------------------------------- FIN PREGUNTA 24--------------------------------
*/


/*
--------------------------------- INICIO PREGUNTA 25 --------------------------------
25. Mostrar el nombre y fecha de entrada de todos los empleados que trabajan en el mismo
departamento que ESTHER.
*/

SELECT recursoshumanos.departamento.NOMBRE, recursoshumanos.empleado.NOMBRE, recursoshumanos.empleado.FECHA_ALTA FROM recursoshumanos.empleado
INNER JOIN recursoshumanos.departamento ON recursoshumanos.empleado.DEPARTAMENTO_ID=recursoshumanos.departamento.ID
WHERE recursoshumanos.empleado.DEPARTAMENTO_ID=(SELECT recursoshumanos.departamento.ID FROM recursoshumanos.departamento 
INNER JOIN recursoshumanos.empleado ON recursoshumanos.empleado.DEPARTAMENTO_ID=recursoshumanos.departamento.ID
WHERE recursoshumanos.empleado.NOMBRE="ESTHER");



/*
--------------------------------- FIN PREGUNTA 25--------------------------------
*/


/*
--------------------------------- INICIO PREGUNTA 26 --------------------------------
26. Calcular el número de empleados que están en BILBAO
*/

SELECT recursoshumanos.departamento.LOCALIDAD, SUM(recursoshumanos.empleado.NOMBRE) AS CANTIDAD_EMPLEADOS FROM recursoshumanos.empleado
INNER JOIN recursoshumanos.departamento ON recursoshumanos.empleado.DEPARTAMENTO_ID=recursoshumanos.departamento.ID
WHERE recursoshumanos.departamento.LOCALIDAD="BILBAO"
group by recursoshumanos.departamento.NOMBRE;


/*
--------------------------------- FIN PREGUNTA 26--------------------------------
*/

