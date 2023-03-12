-- common_table_expressions

WITH RECURSIVE tabla_recursiva(n) AS (
	VALUES(1)
	UNION ALL
	SELECT n + 1 FROM tabla_recursiva WHERE n < 100
) SELECT SUM (n) FROM tabla_recursiva


-- Para hacer una common table expression debes usar el WITH.
-- WITH RECURSIVE common table y un proceso interativo.
-- Despues de AS entre los parentesis le damos los valores.
-- Dentro de los parentesis esta el ciclo.
-- FROM para decirle de donde sacarla.