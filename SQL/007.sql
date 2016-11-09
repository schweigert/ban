SELECT min(salario) AS minimo, max(salario) AS maximo
FROM funcionarios
WHERE cidade = 'Florianopolis';
