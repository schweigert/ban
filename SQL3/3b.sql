SELECT nome, idade FROM medicos WHERE idade <=
ALL ( SELECT idade FROM medicos);
