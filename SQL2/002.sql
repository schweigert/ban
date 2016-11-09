SELECT (m.nome, p.nome)
FROM medicos m JOIN pacientes p ON m.cidade = p.cidade;

-- Segundo a prof

SELECT f1.codf, f1.nome, f2.codf, f2.nome FROM funcionarios f1 JOIN funcionarios f2
ON f1.cidade = f2.cidade AND f1.codf < f2.codf
UNION
SELECT m1.codm, m1.nome, m2.codm, m2.nome FROM medicos m1 joiN medicos m2
ON m1.cidade = m2.cidade AND m1.codm < m2.codm;
