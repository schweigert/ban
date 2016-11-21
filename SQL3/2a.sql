SELECT codp, nome FROM pacientes WHERE codp IN
  (SELECT codp FROM consultas WHERE hora > '14:00:00');
