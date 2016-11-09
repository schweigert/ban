SELECT (m.nome, m.cpf)
FROM medicos m JOIN pacientes p ON m.cpf = p.cpf;
