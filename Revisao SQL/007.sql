SELECT "ID", nome, fone
FROM clientes c
WHERE
	c."ID" IN
	(
		SELECT "cliente"
		FROM locacoes l JOIN copias cp
		ON l."ID" = cp."ID" and l."filme" = cp."filme"
		WHERE cp.midia = 'DVD'
	)
	and
	c."ID" IN
	(
		SELECT "cliente"
		FROM locacoes l JOIN copias cp
		ON l."ID" = cp."ID" and l."filme" = cp."filme"
		WHERE cp.midia = 'VHS'
	)