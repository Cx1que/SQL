USE curso_sql;

SELECT * FROM funcionarios;
SELECT * FROM veiculos;
/*INNER JOIN*/
SELECT * FROM funcionarios INNER JOIN veiculos ON veiculos.funcionario_id = funcionarios.id;
SELECT * FROM funcionarios f INNER JOIN veiculos v ON v.funcionario_id = f.id;
/*LEFT JOIN*/
SELECT * FROM funcionarios f LEFT JOIN veiculos v ON v.funcionario_id = f.id;
/*RIGHT JOIN*/ 
SELECT * FROM funcionarios f RIGHT JOIN veiculos v ON v.funcionario_id = f.id;
/*FULL OUTER JOIN*/
/* o mysql não pussui este comando, porém, ele trás uma alternativa bem
simples com mesmo efeito o comando UNION*/

SELECT * FROM funcionarios f LEFT JOIN veiculos v ON v.funcionario_id = f.id
UNION
SELECT * FROM funcionarios f RIGHT JOIN veiculos v ON v.funcionario_id = f.id;

INSERT INTO veiculos (funcionario_id, veiculo, placa)
VALUES
(null, 'Moto', 'SB-0003');

CREATE TABLE cpfs (
id INT UNSIGNED AUTO_INCREMENT,
cpf VARCHAR (14) NOT NULL,
PRIMARY KEY (id),
CONSTRAINT fk_cpf FOREIGN KEY (id) REFERENCES funcionarios (id));

INSERT INTO cpfs (id, cpf)
VALUES
(1, '111.111.111-11'),
(2, '222.222.222-22'),
(3,'333.333.333-33'),
(5, '555.555.555-55');

SELECT * FROM cpfs;

SELECT * FROM funcionarios INNER JOIN cpfs ON funcionarios.id = cpfs.id;
SELECT * FROM funcionarios INNER JOIN cpfs USING (id);

CREATE TABLE clientes (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
quem_indicou INT UNSIGNED,
PRIMARY KEY (id),
CONSTRAINT fk_quem_indicou FOREIGN KEY(quem_indicou) REFERENCES clientes (id)
);

INSERT INTO clientes (id, nome, quem_indicou)
VALUES
(1, 'André', NULL),
(2, 'Samuel', 1),
(3, 'Carlos', 2),
(4, 'Rafael', 1);

SELECT * FROM clientes;

SELECT a.nome AS CLIENTE, b.nome AS "QUEM INDICOU"
 FROM clientes a JOIN clientes b ON a.quem_indicou = b.id;
 
SELECT * FROM funcionarios f
INNER JOIN veiculos v ON v.funcionario_id = f.id 
INNER JOIN cpfs ON cpfs.id = f.id;


CREATE VIEW funcionario_a AS SELECT * FROM funcionarios WHERE salario > 1700; 

SELECT * FROM funcionario_a;
UPDATE funcionarios SET salario = 1500 WHERE id = 3;
DROP VIEW funcionario_a;

CREATE VIEW funcionario_a AS SELECT * FROM funcionarios WHERE salario > 2000; 
