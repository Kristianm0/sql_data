-- PLPGSQL: Aplicado a data science

-- EJEMPLO ◀️
CREATE OR REPLACE FUNCTION movies_status()
RETURNS VOID
LANGUAGE plpgsql
AS $$
DECLARE 
	total_rated_r REAL := 0.0;
	total_large_thank_100 REAL := 0.0;
	total_published_2006 REAL := 0.0;
	average_duracion REAL := 0.0;
	average_rental_price REAL := 0.0;
BEGIN
	total_rated_r := COUNT(*) FROM peliculas WHERE clasificacion = 'R';
	total_large_thank_100 := COUNT(*) FROM peliculas WHERE duracion >100;
	total_published_2006 := COUNT(*) FROM peliculas WHERE anion_publicacion = 2006;
	average_duracion := AVG(duracion) FROM peliculas;
	average_rental_price := AVG (precio_renta) FROM peliculas;
	
	TRUNCATE TABLE peliculas_estadisticas;
	
	INSERT INTO peliculas_estadisticas (tipos_estadisticas, total)
	VALUES
		('Peliculas con clasificacion R', total_rated_r),
		('Peliculas de mas de 100 minutos', total_larger_than_100),
		('Peliculas publicadas en 2006', total_published_2006),
		('Promedio de duracion en minutos', average_duracion),
		('Precio promedio de renta', average_renta_price);
END
$$;

-- CREATE OR REPLACE FUNCTION para crear o remplazar.
-- RETURN VOID para que devuelva un valor.
-- LANGUAGE plpgsql para el lenguaje.
-- AS $$ para decirle donde comienza la funcion.
-- DECLARE para declarar nuestras variables.
-- REAL es para darle un dato real o el tipo de datos.
-- BEGIN y END para la funcion.

-- Estamos asignando a cada variable la consulta SQL.
-- Tambien insertamos valores.
-- Arriba despues del BEGIN ponemos las variables y la sentencia SQL.
-- Despues del TRUNCATE colocamos un texto con su setentencia para que aparezca más facil.

-- EJEMPLO ◀️
CREATE TYPE humor AS ENUM('triste', 'normal', 'feliz');

CREATE TABLE persona_p(
	nombre text,
	humor_actual humor
);

INSERT INTO persona_p VALUES('Pablo', 'normal')

-- CREATE TYPE para definir el tipo de dato.
-- AS ENUM como diccionario en el cual pueden haber opciones, las cuales pones dentro de los parentesis.
-- CREATE TABLE para el ejemplo, creamos una tabla.
-- INSERT INTO para agregar datos a la tabl, ponemos el nombre y despues el humor con alguna de las opciones que le colocamos.