SELECT "ID", titulo
FROM filmes
WHERE (ano = 2002 or ano = 2003) and (duracao > 90 and duracao < 120)
ORDER BY titulo
