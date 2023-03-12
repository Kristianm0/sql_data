-- AGREGACION DE DATOS 📌


-- EJEMPLO ◀️
SELECT MAX(precio_renta)
FROM peliculas;


-- SELECT el dato que queremos.
-- MAX para sacar el maximo.
-- FROM de la tabla donde queremos.

-- EJEMPLO ◀️
SELECT titulo, MAX(precio_renta)
FROM peliculas
GROUP BY titulo

-- Lo mismo pero con los titulo.

-- EJEMPLO ◀️
SELECT SUM (precio_renta)
FROM peliculas

-- SUM para suamr

-- EJEMPLO ◀️
SELECT clasificacion, COUNT(*)
FROM peliculas 
GROUP BY clasificacion


-- Lo mismo pero con COUNT que sirve para contar valores.


-- EJEMPLO ◀️
SELECT AVG(precio_renta)
FROM peliculas 

-- AVG para sacar el promedio.

-- EJEMPLO ◀️
SELECT clasificacion, AVG (precio_renta) AS precio_promedio
FROM peliculas
GROUP BY clasificacion
ORDER BY precio_promedio;

-- SELECT para los datos que queremos.
-- AVG para el promedio.
-- AS para cambiar el nombre.
-- GROUP BY para agrupar.
-- ORDER BY para agrupar por el precio.