SELECT nome, idade FROM medicos m WHERE
EXISTS
  (SELECT * FROM consultas c WHERE
    c.codm = m.codm AND
    EXISTS (SELECT * FROM pacientes p WHERE nome = 'Ana' and p.codp = c.codp)
  );
