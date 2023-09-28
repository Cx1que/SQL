/* JOINS*/ 
SELECT curso.curso, tipo.tipo FROM curso INNER JOIN tipo
ON curso.fk_tipo = tipo.id_tipo;

SELECT curso.curso, tipo.tipo, instrutor.instrutor, instrutor.telefone FROM curso
INNER JOIN tipo ON curso.fk_tipo = tipo.id_tipo
INNER JOIN instrutor ON curso.fk_instrutor = instrutor.id_instrutor;

SELECT pedido.id_pedido, pedido.datahora, curso.id_curso FROM pedido
INNER JOIN curso ON pedido.fk_aluno = curso.id_curso;

 SELECT pedido.id_pedido, pedido.datahora, curso.curso AS 'NOME DO CURSO'
 FROM pedido
INNER JOIN curso ON pedido.fk_aluno = curso.id_curso;

SELECT pedido.id_pedido, pedido.datahora, aluno.aluno, curso.curso FROM pedido
INNER JOIN aluno ON pedido.fk_aluno = aluno.id_aluno
INNER JOIN curso ON curso.fk_tipo = curso.id_curso;

/* VIEWS*/

CREATE VIEW preco_curso AS SELECT curso.curso, curso.valor FROM curso;

CREATE VIEW curso_softbue AS SELECT curso.curso, tipo.tipo, instrutor.instrutor FROM curso 
INNER JOIN tipo ON curso.fk_tipo = tipo.id_tipo
INNER JOIN instrutor ON curso.fk_instrutor = instrutor.id_instrutor;

CREATE VIEw pedidos_realiazdos AS SELECT pedido.id_pedido, pedido.datahora, aluno.aluno FROM pedido
INNER JOIN aluno ON pedido.fk_aluno = aluno.id_aluno;
