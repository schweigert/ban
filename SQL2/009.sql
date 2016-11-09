SELECT (f.nome, f.salario)
FROM funcionarios f, funcionarios f1
WHERE
  f1.nome = 'Carlos'
  AND f1.nome <> f.nome
  AND f.salario > f1.salario;
