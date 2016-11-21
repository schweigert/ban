SELECT nome, cpf FROM medicos m WHERE
EXISTS (
  SELECT * FROM pacientes p WHERE p.cpf = m.cpf
);
