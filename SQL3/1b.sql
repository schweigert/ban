SELECT nroa, andar FROM ambulatorios WHERE capacidade >
ANY (
  SELECT capacidade FROM ambulatorios
);
