SELECT id, nome, fone
FROM clientes c
WHERE c.id IN
	(
		SELECT "cliente" FROM locacoes l JOIN filmes f ON l."filme" = f.id JOIN estilos e ON f."estilo" = e.id WHERE e.nome = 'ação' or e.nome = 'suspense'
	)
	and not C.id IN
	(
		SELECT "cliente" FROM locacoes l JOIN filmes f ON l."filme" = f.id JOIN estilos e ON f."estilo" = e.id WHERE e.nome != 'ação' and e.nome != 'suspense'
	)