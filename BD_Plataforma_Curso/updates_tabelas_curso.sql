SELECT * FROM aluno;

UPDATE aluno
SET endereco = 'Av. Brasil 778'
WHERE aluno = 'José';

UPDATE aluno
SET email = 'cristiano@softblue.com.br'
WHERE aluno = 'Cris';

UPDATE curso
SET valor = ROUND(valor* 1.1, 2)
WHERE valor < 300.0;

UPDATE curso 
SET curso = 'PHP Fundamentos'
WHERE curso = 'PHP Básico';

SET SQL_SAFE_UPDATES = 0;
