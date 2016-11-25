SELECT c1.nome as Responsavel, c2.nome as Relacionado 
FROM clientes c1 RIGHT JOIN clientes c2 ON c1."ID" = c2.responsavel
WHERE c1.cidade = 'Florianopolis'
