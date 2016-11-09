SELECT a.*, m.codm, m.nome
FROM ambulatorios a LEFT JOIN medicos m ON a.nroa = m.nroa;
