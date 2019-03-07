CREATE TABLESPACE BANCOS
DATAFILE
  'C:\ORACLE\EJEMPLOS\BANCOS-1.ORA' SIZE 1 M,
  'C:\ORACLE\EJEMPLOS\BANCOS-2.ORA' SIZE 500 K
DEFAULT STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 25);

CREATE USER BANCO
IDENTIFIED BY  BANCO
DEFAULT TABLESPACE  BANCO
QUOTA UNLIMITED ON  BANCO;

GRANT DBA TO BANCO;

CONN BANCO;




CREATE TABLE TiposDePago(
    CODIGO NUMBER(15),
    DESCRIPCION VARCHAR2(50),
    CONSTRAINT PK_TIPODP PRIMARY KEY (CODIGO)
);


CREATE TABLE COLABORADORES(
    NIF NUMBER(15),
    NOMBRE VARCHAR2(10),
    APELLIDOS VARCHAR2(10),
    DOMICILIO VARCHAR2(15),
    TELEFONO NUMBER(10),
    BANCO VARCHAR2(20),
    NumeroCuenta NUMBER(25),
    CONSTRAINT PK_BOLA PRIMARY KEY (NIF)
);


CREATE TABLE CLIENTES (
    CODIGO NUMBER(10),
    DIRECCION VARCHAR2(10),
    TELEFONO NUMBER(10),
    CONSTRAINT PK_CLI PRIMARY KEY (CODIGO)
);


CREATE TABLE PROYECTOS (
    CODIGO NUMBER(10),
    DESCRIPCION VARCHAR2(50) NOT NULL,--NUMERO 3
    CUANTIA NUMBER(10),
    FechaInicio DATE,
    FechaFin DATE,
    CodigoCliente NUMBER(10),
    CONSTRAINT PK_PROY PRIMARY KEY (CODIGO),
    CONSTRAINT FK_PROY FOREIGN KEY (CodigoCliente) ON REFERENCES TO CLIENTES (CODIGO) ON DELETE CASCADE
);


CREATE TABLE COLABORACIONES(
    CodigoProyecto NUMBER(10),
    NIFColaborador NUMBER(10),
    CONSTRAINT PK_COLAB PRIMARY KEY (CodigoProyecto, NIFColaborador),
    CONSTRAINT FK_PROY FOREIGN KEY (CodigoProyecto) ON REFERENCES TO PROYECTOS (CODIGO) ON DELETE CASCADE,
    CONSTRAINT FK_PROY FOREIGN KEY (NIFColaborador) ON REFERENCES TO COLABORADORES (NIF) ON DELETE CASCADE
);


CREATE TABLE PAGOS(
    NUMERO NUMBER(15),
    CONCEPTO VARCHAR2(20),
    IMPORTE NUMBER(4),
    FECHA DATE,
    CodigoTipoDePago NUMBER(15),
    CodigoProyecto NUMBER(15),
    NIFColaborador NUMBER(15),
    CONSTRAINT PK_PAGOS PRIMARY KEY (NUMERO),
    CONSTRAINT FK_PAG FOREIGN KEY (CodigoTipoDePago) ON REFERENCES TO TiposDePago (CODIGO) ON DELETE CASCADE,
    CONSTRAINT FK_PAG FOREIGN KEY (CodigoProyecto) ON REFERENCES TO COLABORACIONES (CodigoProyecto) ON DELETE CASCADE,
    CONSTRAINT FK_PAG FOREIGN KEY (NIFColaborador) ON REFERENCES TO COLABORACIONES (NIFColaborador) ON DELETE CASCADE
);

--Numero 7
ALTER TABLE PAGOS(
    MODIFY IMPORTE NOT NULL
);


--Numero 8
ALTER TABLE PROYECTOS(
    ADD NOMBRE VARCHAR2(20)
);

--Numero 9
DROP TABLE COLABORACIONES;


--Numero 10
ALTER TABLE PAGOS(
    DROP COLUMN FECHA
);
     















