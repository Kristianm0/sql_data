-- CONTEO 📌

-- EJEMPLOS ◀️
CREATE OR REPLACE FUNCTION count_total_movies()
RETURNS int
LANGUAGE plpgsql
AS $$
BEGIN 
	RETURN COUNT(*) FROM peliculas;
END
$$;


-- CREATE OR REPLACE FUNCTION para que cree o reemplaza la funcion, le damos el nombre y lo cerramos en parentesis.
-- RETURNS para devolver un valor el cual especifcamos su tipo.
-- LANGUAGE le especificamos el idioma.
-- AS $$ abrimos la funcion con BEGIN y la cerramos con END.
-- RETURN COUNT para que devuelva un valor contado.
-- FROM peliculas, que lo busque de las peliculas.

-- EJEMPLOS ◀️
CREATE OR REPLACE FUNCTION duplicate_records()
RETURNS trigger
LANGUAGE plpgsql
AS $$
BEGIN 
	INSERT INTO aaab(bba, cca)
	VALUES (NEW.bbb, NEW.ccc);
	RETURN NEW;
END
$$;


-- CREATE OR REPLACE FUNCTION para crear o reemplazar la funcion.
-- RETURNS trigger para que regrese un valor tipo trigger.
-- LANGUAGE para especificar el idioma.
-- AS $$ para  abrir la funcion.
-- BEGIN para indicar donde empieza.
-- END para decir donde termina.
-- INSERT INTO, la tabla y dentro de los parentesis las columnas.
-- VALUES para indicar los valores.
-- RETURN NEW para que devuelva un nuevo valor.

-- EJEMPLOS ◀️
CREATE TRIGGER aaa_changes
	BEFORE INSERT 
	ON aaa
	FOR EACH ROW
	EXECUTE PROCEDURE duplicate_records()

-- CREATE TRIGGER para crear un trigger.
-- BEFORE INSERT antes de inserta los datos en la tabla AAA.
-- FOR EACH ROW por cada columna que ejecute;
-- EXECUTE PROCEDURE la funcion que queremos.

INSERT INTO aaa(bbb, ccc)
VALUES ('abcde', 'efghi');