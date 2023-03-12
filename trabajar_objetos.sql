-- TRABAJAR CON OBJETOS 


-- EJEMPLO ◀️
CREATE TABLE ordenes (
	ID serial NOT NULL PRIMARY KEY,
	info json NOT NULL 
);

-- CREATE TABLE nueva con el tipo de datos json.
-- Creamos las columnas. Con sus tipos de datos.

-- EJEMPLO ◀️
INSERT INTO  ordenes1(info)
VALUES
('{"cliente":"Edna Moda", "items":{"producto":"Biberon", "cantidad":3}}'),
('{"cliente":"Juan Moda", "items":{"producto":"Carro", "cantidad":3}}');


-- INSERT INTO la tabla donde queremos.
-- VALUES para meter los valores con parentesis y con llaves.


-- EJEMPLO ◀️
SELECT 
	INFO -> 'cliente' AS cliente
FROM ordenes1

-- SELECT info -> clientes para que traiga la columana clientes y que AS la llame cliente
-- FROM ordenes1


-- AGREGANDO OBJETOS 📌
SELECT 
	MIN(
		CAST(
			info -> 'items' ->> 'cantidad' AS INTEGER 
		)
	),
	MAX(
		CAST(
			info -> 'items' ->> 'cantidad' AS INTEGER 
		)
	),
	MIN(
		CAST(
			info -> 'items' ->> 'cantidad' AS INTEGER 
		)
	),	
	AVG(
		CAST(
			info -> 'items' ->> 'cantidad' AS INTEGER 
		)
	)	
FROM ordenes;
	
-- SELECT para elegir el minimo con MIN-
-- CASRT para cambiar el tipo de valor a otro.
-- INFO -> es donde esta el objeto json.
-- FROM para decirle de donde lo va a sacar.

-- Hacemos lo mismo pero con el MAX, SUM, AVG.