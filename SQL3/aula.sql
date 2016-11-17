-- Deletar médico com nome carlos

DELETE FROM consultas Where codm IN
(SELECT codm FROM medicos WHERE nome = 'Carlos');

-- Dar aumento ao funcionário mais velho

UPDATE funcionarios SET salario = salario*1.1
WHERE idade = (SELECT max(idade) FROM funcionarios);

-- Nome e CPF dos médicos que também são pacientes do hospital
SELECT nome, cpf FROM medicos WHERE cpf IN (SELECT CPF FROM Pacientes);

-- Numero e andar dos ambulatórios utilizados por médicos ortopedistas

SELECT nroa, andar
FROM ambulatorios
WHERE nroa
IN
  (SELECT nroa FROM medicos WHERE especialidade 'ortopedia');

-- Nome e idade dos médicos que tem consultas com a paciente ana

SELECT nome, idade
FROM medicos
WHERE codm
IN (
  SELECT codm
  FROM consultas
  WHERE codp
  IN (
    SELECT codp
    FROM Pacientes
    WHERE nome = 'Ana'
  )
);

-- nome e salário dos funcionários

SELECT nome, salario
FROM funcionarios f2
WHERE f2.salario > (
  SELECT salario
  FROM funcionarios f1
  WHERE f1.nome = 'Carlos' and f1.cidade = f2.cidade
)

-- in: = e !=
-- all: and entre todos

SELECT nome, salario
FROM funcionarios f2
WHERE f2.salario >  all (
  SELECT salario
  FROM funcionarios f1
  WHERE f1.nome = 'Carlos' and f1.cidade = f2.cidade
)

-- any: or entre todos

SELECT nome, salario
FROM funcionarios f2
WHERE f2.salario > any (
  SELECT salario
  FROM funcionarios f1
  WHERE f1.nome = 'Carlos' and f1.cidade = f2.cidade
)

SELECT nroa, andar
FROM ambulatorios
WHERE nroa = ANY
  (SELECT nroa FROM medicos WHERE especialidade 'ortopedia');

-- Nome e CPF dos médicos que também são pacientes do hospital

SELECT nome, cpf
FROM medicos m
WHERE
  EXISTS (SELECT * FROM Pacientes p where p.cpf = m.cpf);

-- EXISTS É OTIMIZADO PRA CARALHO
