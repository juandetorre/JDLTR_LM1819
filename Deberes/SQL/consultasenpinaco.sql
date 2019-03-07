1-Consultar el contenido de todas las tablas.
Select * from Cuadros, cuadros_pintores, escuelas, maestros, mecenas, mecenazgo, pintores, pintores_escuelas;
2-Consultar sólo el identificador y el nombre las siguientes tablas:
Pinacotecas.
 Select ID_PINACOTECAS from pinacotecas;
Cuadros.
 SELECT id_cuadro from cuadros;
Pintores.
 Select id_pintores from pintores;
Mecenas.
 Select id_mecenas from mecenas;
Escuelas.
Select id_escuelas from escuelas;

3-Usando concatenación de textos, se pide listar los datos de la tabla pintores con las siguientes columnas: "IDENTIFICADOR", "NOMBRE", "ID-NOMBRE", donde ID-NOMBRE será el resultado de la concatenación del campo ID_PINTOR y de N_PINTOR.
Select id_pintor, n_pintor, id_pintor || '' || n_pintor 'id_nombre' from pintores;

4-Usando concatenación de textos, listar el contenido de la tabla pinacotecas de la siguiente forma: "Pinacoteca (ID_PINACOTECA): (NOMBRE)".
Select 'Pinacoteca' || id_pinacoteca || ': ' || nombre as informacion from pinacotecas;

5-Seleccionar nombre y país de la tabla pinacotecas donde ID_PINACOTECA es "MUBAS".
Select nombre pais from pinacotecas WHERE ID_PINACOTECA = 'MUBAS';

6-Seleccionar técnica, ancho y alto de los siguientes cuadros: La Gioconda, El nacimiento de Venus y Sagrada Familia.
Select tecnica, ancho, alto from cuadros where n_cuadro = 'LA GIOCONDA' or n_cuadro = 'EL NACIMIENTO DE VENUS' or n_cuadro = 'SAGRADA FAMILIA';

7-Seleccionar nombre y ciudad de nacimiento de los mecenas italianos.
Select n_mecenas, ciudad_nac from mecenas where pais = 'italia';

8-Seleccionar el nombre de los mecenas que nacieron en Madrid o en Valladolid.
Select N_MECENAS from MECENAS where CIUDAD_NAC = 'Madrid' or CIUDAD_NAC = 'Valladolid';

9-Seleccionar nombre y fecha de aparición de las escuelas españolas o italianas.
Select n_escuelas, fecha_aparicion from escuelas where concat(pais = 'España' or pais = 'Italia');

10-Idem anterior pero usando la cláusula IN.
Select nombre, fecha_aparicion from escuelas where pais in ('España', 'Italia');

11-Seleccionar nombre y ciudad de nacimiento de los mecenas holandeses y belgas usando la cláusula IN.
Select nombre, ciudad_nac from mecenas where pais in ('Holanda', 'Belgica');

12-Seleccionar nombre y ciudad de nacimiento de los mecenas cuyo nombre comienza por F y termina en O.
Select n_mecenas, ciudad_nac from mecenas where nombre like 'F%' and n_mecenas like '%o';