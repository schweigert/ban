SELECT "ID", nome, fone
FROM clientes c
WHERE c."ID" IN
	(
		SELECT "cliente" FROM locacoes l JOIN filmes f ON l."filme" = f."ID" JOIN estilos e ON f."estilo" = e."ID" WHERE e.nome = 'ação' or e.nome = 'suspense'
	)
	and not C."ID" IN
	(
		SELECT "cliente" FROM locacoes l JOIN filmes f ON l."filme" = f."ID" JOIN estilos e ON f."estilo" = e."ID" WHERE e.nome != 'ação' and e.nome != 'suspense'
	)