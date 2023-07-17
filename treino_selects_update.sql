USE curso_sql;

CREATE TABLE salarios
(
	faixa varchar(45) not null,
    inicio double not null,
    fim double not null,
    PRIMARY KEY (faixa)
);

SELECT * FROM funcionarios;

SELECT * FROM funcionarios WHERE salario > 2000;
SELECT * FROM funcionarios WHERE nome = 'José';
SELECT * FROM funcionarios WHERE id = 3;

SET SQL_SAFE_UPDATES = 0;

UPDATE funcionarios
SET salario = salario * 1.1
WHERE id = 1;

UPDATE funcionarios
SET salario = ROUND(salario * 1.1, 2);

DELETE FROM funcionarios
WHERE id = 4;


INSERT INTO veiculos (funcionario_id, veiculo, placa)
VALUES
(1, 'Carro', 'SB-0001');
INSERT INTO veiculos (funcionario_id, veiculo, placa)
VALUES
(1, 'Carro', 'SB-0002');

UPDATE veiculos
SET funcionario_id = 5
WHERE id = 2;

SELECT * FROM veiculos;


INSERT INTO salarios (faixa, inicio, fim)
VALUES
('Analista JR', 1000, 2000),
('Analista Pleno', 2000, 4000);

SELECT * FROM salarios;

SELECT nome AS 'Funcionario', salario FROM funcionarios f
WHERE salario > 2000;

SELECT * FROM funcionarios
WHERE nome = 'Guilherme'
UNION
SELECT * FROM funcionarios
WHERE id = 5;

SELECT * FROM funcionarios
WHERE nome = 'Guilherme'
UNION ALL
SELECT * FROM funcionarios
WHERE nome = 'Guilherme';
