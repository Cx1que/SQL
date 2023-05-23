/*ESSE É UM CÓDIGO QUE FIZ EM ALGUNS PEDAÇOS DE PAPEL NO TRABALHO, E, CONSEGUI TRANSCREVE-LO CORRETAMENTE PARA O WORCHBANCH.
O CÓDIGO FAZ REFERENCIA AO MEU AMBIENTE DE TRABALHO E ALGUMAS DAS PESSOAS QUE EU CONHEÇO E SEUS RESPECTIVOS SETORES DENTRO DA EMPRESA*/



CREATE DATABASE mercado;
USE mercado;
CREATE TABLE funcionario (
id_func INT AUTO_INCREMENT PRIMARY KEY,
nome_func VARCHAR (100),
fk_depart_func INT 
);
CREATE TABLE departamento (
id_depart INT AUTO_INCREMENT PRIMARY KEY,
nome_depart VARCHAR (100)
);
INSERT INTO departamento (nome_depart)
VALUES 
("Frente Caixa"),
("Prevenção"),
("FLV"),
("Mercearia");
INSERT INTO funcionario (nome_func, fk_depart_func)
VALUES
("Caique", 1),
("André", 2),
("Flavin", 3),
("Paulo", 4);

ALTER TABLE funcionario ADD CONSTRAINT
FOREIGN KEY (fk_depart_func)
REFERENCES departamento (id_depart);
SELECT funcionario.nome_func,
departamento.nome_depart FROM funcionario
INNER JOIN departamento
ON funcionario.fk_depart_func = 
departamento. id_depart;
