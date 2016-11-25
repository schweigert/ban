SELECT "id", nome, fone
FROM clientes c
WHERE
	c."id" IN
	(
		SELECT "cliente"
		FROM locacoes l JOIN copias cp
		ON l."id" = cp."id" and l."filme" = cp."filme"
		WHERE cp.midia = 'DVD'
	)
	and
	c."id" IN
	(
		SELECT "cliente"
		FROM locacoes l JOIN copias cp
		ON l."id" = cp."id" and l."filme" = cp."filme"
		WHERE cp.midia = 'VHS'
	)