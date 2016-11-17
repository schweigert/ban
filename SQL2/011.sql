SELECT m.cpf, m.nome, p.cpf, p.nome, c.data
FROM medicos m
LEFT JOIN consultas c ON m.codm = c.codm
LEFT JOIN pacientes p ON c.codp = p.codp;
