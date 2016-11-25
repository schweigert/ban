-- buscar os IDs e títulos dos filmes de ação que possuem duração superior a duração de todos os filmes
--de suspense, terror e drama;

select * from filmes f join estilos e on f.estilo = e.id and e.nome = 'ação' where duracao > all
(
	select duracao from filmes f1 join estilos e1 on (f1.estilo = e1.id) and (e1.nome in ('drama', 'terror', 'suspense'))
)