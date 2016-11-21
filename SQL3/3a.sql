SELECT nome, idade FROM medicos WHERE codm IN
  (SELECT codm FROM consultas WHERE codp IN
    (SELECT codp FROM pacientes WHERE nome = 'Ana')
  );
