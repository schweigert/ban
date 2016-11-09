SELECT (m.nome, m.idade)
FROM
    medicos m JOIN consultas c ON m.codm = c.codm
    JOIN pacientes p ON c.codp = p.codp and p.nome = 'Ana';
