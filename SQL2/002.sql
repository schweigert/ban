SELECT (m.nome, p.nome)
FROM medicos m JOIN pacientes p ON m.cidade = p.cidade;
