/* alterações nas tabelas*/
ALTER TABLE aluno ADD COLUMN data_nascimento VARCHAR(10);
ALTER TABLE aluno CHANGE data_nascimento data_nascimento DATE;
ALTER TABLE instrutor ADD email VARCHAR(100);
ALTER TABLE instrutor
DROP COLUMN email;
