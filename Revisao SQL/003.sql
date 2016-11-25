SELECT * FROM filmes f 
WHERE EXISTS
(
	SELECT * FROM locacoes l WHERE f."ID" = l."filme" and (l."dataR" = '2006-09-30' or l."dataR" = '2006-10-01')
)
ORDER BY estilo DESC, titulo