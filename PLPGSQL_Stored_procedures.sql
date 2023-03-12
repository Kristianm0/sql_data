-- PLPGSQL: Stored procedures 📌

-- EJEMPLOS ◀️
CREATE OR REPLACE PROCEDURE test()
LANGUAGE SQL
AS $$
	DROP TABLE IF EXISTS aaa;
	CREATE TABLE aaa (dat1 char(5), CONTRAINT firstkey PRIMARY KEY);
$$;


-- CREATE OR REPLACE para crear o escribir test para llamar la funcion.
-- LANGUAGE para especificar el lenguaje y le decimos que con SQL.
-- AS para crear la funcion.
-- $$ Para saber donde empieza la funcion.
-- DROP TABLE IF EXISTS para decirle si exites la tabla que la borre.
-- CREATE en tal caso de que no exista igual la vamos a crear. Entre parentesis le damos las columnas que va tener con sus valores.
-- En resumen esta funcion elimina y crea un tabla.

-- EJEMPLOS ◀️
CREATE OR REPLACE FUNCTION test2_function()
RETURNS VOID
LANGUAGE plpgsql
AS $$ 
BEGIN 
	DROP TABLE IF EXISTS aaa;
	CREATE TABLE aaa (bbb char(5) CONSTRAINT firskey PRIMARY KEY, ccc char(5));
	DROP TABLE IF EXISTS aaab;
	CREATE TABLE aaa (bbba char(5) CONSTRAINT secoundkey PRIMARY KEY, ccca char(5));
END
$$;

-- CREATE OR REPLACE FUNCTION para crear o remplazar la funcion.
-- RETURNS para que regrese un valor.
-- VOID para que el valor que regrese sea vacio.
-- LANGUAGE para decirle el lenguaje que va a usar.
-- AS $$ para indicar donde inicia la funcion.
-- BEGIN especificar donde empieza.
-- END para especificar donde termina.