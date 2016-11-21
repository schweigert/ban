-- ERRADO

SELECT nome FROM pacientes p WHERE EXISTS (SELECT * FROM Consultas c WHERE c.codp = p.codp AND EXISTS (SELECT * FROM medics m WHERE c.codm = m.codm));

-- Retorna somente com um médico

-- CORRETO
SELECT nome FROM Pacientes p WHERE NOT EXISTS (SELECT * FROM medicos m WHERE NOT EXISTS (SELECT * FROM consultas c WHERE c.codm = m.codm and c.codp = p.codp));



SELECT nome FROM pacientes p WHERE NOT exists
(
  SELECT * FROM medicos m WHERE NOT EXISTS
  (
    SELECT * FROM consultas c WHERE c.codm = m.codm and c.codp = p.codp
  )
);
