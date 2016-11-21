SELECT nroa FROM ambulatorios a WHERE
NOT EXISTS (
  SELECT * FROM ambulatorios a2 WHERE a2.capacidade > a.capacidade
);
