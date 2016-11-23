select id, nome, fone from clientes c where not exists
(
	select * from copias cp where not exists
	(
		select * from locacoes l
		where l.id = cp.id
		and l.filme = cp.filme
		and l.cliente = c.id
		and cp.midia = 'VHS'
		and cp.tipo = 'legendado'
	)
) and c.cidade = 'Florianópolis'
