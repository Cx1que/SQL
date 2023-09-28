INSERT INTO tipo (tipo)
VALUES
('Banco de Dados'),
('Programação'),
('Modelagew de Dados');

INSERT INTO instrutor (telefone)
VALUES
(1111111),
(2222222);

INSERT INTO curso (curso, fk_tipo, fk_instrutor, valor)
VALUES
('Java Fundamentos', 2, 2, 270.0),
('Java Avançado', 2, 2, 330.0),
('SQL Completo', 1, 1, 170.0),
('PHP Básico', 2, 1, 270.0);

INSERT INTO aluno (aluno, endereco, email)
VALUES
('José', 'Rua XV de Novembro 72','jose@gmail.com'),
('Wagner', 'Av. Paulista', 'wagner@gmail.com'),
('emílio', 'Rua das Lajes 103, ap: 701', 'emilio@gmail.com');
INSERT INTO aluno (aluno, endereco, email) VALUES ('Cris', 'Rua Tauney 22', 'cris@softblue.com.br');
INSERT INTO aluno (aluno, endereco, email) VALUES ('Regina', 'Rua Salles 305', 'regina@softblue.com.br');
INSERT INTO aluno (aluno, endereco, email) VALUES ('Fernando', 'Av. Central 30', 'fernando@softblue.com.br');

INSERT INTO pedido (fk_aluno, datahora)
VALUES
(2, '2010-04-15 14:23:32'),
(2, '2010-04-15 14:36:21'),
(3, '2010-04-16 11:17:45');
INSERT INTO pedido (fk_aluno, datahora) VALUES (4, '2010-04-17 14:27:22');
INSERT INTO pedido (fk_aluno, datahora) VALUES (5, '2010-04-18 11:18:19');
INSERT INTO pedido (fk_aluno, datahora) VALUES (6, '2010-04-19 13:47:35');
INSERT INTO pedido (fk_aluno, datahora) VALUES (6, '2010-04-20 18:13:44');



INSERT INTO pedido_detalhe (fk_id_pedido, fk_curso, valor)
VALUES
(1, 2, 270),
(2, 1, 330),
(2, 2, 270);
INSERT INTO pedido_detalhe (fk_id_pedido, fk_curso, valor) VALUES (2, 2, 330);
INSERT INTO pedido_detalhe (fk_id_pedido, fk_curso, valor) VALUES (2, 3, 170);
INSERT INTO pedido_detalhe (fk_id_pedido, fk_curso, valor) VALUES (3, 4, 270);
INSERT INTO pedido_detalhe (fk_id_pedido, fk_curso, valor) VALUES (4, 2, 330);
INSERT INTO pedido_detalhe (fk_id_pedido, fk_curso, valor) VALUES (4, 4, 270);
INSERT INTO pedido_detalhe (fk_id_pedido, fk_curso, valor) VALUES (5, 3, 170);
INSERT INTO pedido_detalhe (fk_id_pedido, fk_curso, valor) VALUES (6, 3, 170);
INSERT INTO pedido_detalhe (fk_id_pedido, fk_curso, valor) VALUES (7, 4, 270);



/* mais inserções de dados*/
USE ex_modelagem;
INSERT INTO aluno (aluno, endereco, email)
VALUES
('Cris', 'Rua Tauney 22', 'cris@softblue.com.br'),
('Regina', 'Rua Salles 305', 'regina@softblue.com.br'),
('Fernando', 'Av. Central 30', 'fernando@softblue.com.br');

INSERT INTO pedido (id_aluno, data_compra, hora)
VALUES
(4, '2010-04-17', '14:27:22'),
(5, '2010-04-18', '11:18:19'),
(6, '2010-04-19', '13:47:35'),
( 6, '2010-04-20', '18:13:44');

INSERT INTO pedido_detalhe
VALUES
(1, 1, 270),
(1, 2, 330),
(2, 1, 270),
(2, 2, 330),
(2, 3, 170),
(3, 4, 270),
(4, 2, 330),
(4, 4, 270),
(5, 3, 170),
(6, 3, 170),
(7, 4, 270);

