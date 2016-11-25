SELECT *
FROM funcionarios f
WHERE f."ID" IN
   (
	SELECT "ID" FROM clientes c WHERE EXISTS 
	(
		SELECT * FROM locacoes l WHERE c."ID" = l.cliente and l."dataR" = '2006-10-01'
	)
   )
   and f.turno = 'N';

   