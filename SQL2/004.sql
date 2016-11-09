SELECT (a.nroa, a.andar)
FROM ambulatorios a JOIN medicos m ON a.nroa = m.nroa
WHERE m.especialidade = 'ortopedia';
