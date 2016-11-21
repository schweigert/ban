SELECT nroa, andar FROM ambulatorios WHERE nroa NOT IN
(
  SELECT nroa FROM medicos WHERE nroa IS NOT NULL
);
