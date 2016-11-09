-- Produto cartesiano + condição de junção
SELECT m.*, a.* FROM medicos m, ambulatorios a WHERE m.nroa = a.nroa;

-- Junção
SELECT m.*, a.* FROM medicos m JOIN ambulatorios a ON m.nroa = a.nroa;

-- Junção Natural
SELECT m.*, a.* FROM medicos m NATURAL JOIN ambulatorios a;

-- Junções Externas
--   LEFT [OUTER] JOIN
--   RIGHT [OUTER] JOIN
--   FULL [OUTER] JOIN

SELECT m.*, a.* FROM medicos m LEFT OUTER JOIN ambulatorios a on m.nroa = a.nroa;
SELECT m.*, a.* FROM medicos m RIGHT OUTER JOIN ambulatorios a on m.nroa = a.nroa;
SELECT m.*, a.* FROM medicos m FULL JOIN ambulatorios a on m.nroa = a.nroa;
