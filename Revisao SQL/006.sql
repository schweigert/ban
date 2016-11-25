SELECT nome, cidade, endereco
FROM funcionarios
WHERE turno = 'M' or turno = 'T'

UNION

SELECT nome, cidade, endereco
FROM clientes c
WHERE EXISTS
	(
		SELECT * FROM locacoes l WHERE c."ID" = l."cliente"
	)