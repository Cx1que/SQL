);

CREATE TABLE instrutor
(
	id_instrutor INT UNSIGNED NOT NULL AUTO_INCREMENT,
    instrutor VARCHAR(64) NOT NULL,
    telefone VARCHAR (9) NULL,             -- TABELA PARA ARMAZENAR OS DADOS DO INSTRUTOR--
    PRIMARY KEY (id_instrutor)
);


CREATE TABLE curso
(
	id_curso INT UNSIGNED NOT NULL AUTO_INCREMENT,
    curso VARCHAR (64) NOT NULL,
	fk_tipo INT UNSIGNED NOT NULL,
    fk_instrutor INT UNSIGNED NOT NULL,        -- TABELA PARA ARMAZENAR TODOS OS CURSOS--
    valor DOUBLE NOT NULL,
    PRIMARY KEY (id_curso),
    FOREIGN KEY (fk_tipo) REFERENCES tipo(id_tipo),
    FOREIGN KEY (fk_instrutor) REFERENCES instrutor(id_instrutor)    
);

CREATE TABLE aluno
(
	id_aluno INT UNSIGNED NOT NULL AUTO_INCREMENT,
    aluno VARCHAR (64) NOT NULL,
    endereco VARCHAR (230) NOT NULL,
    email VARCHAR (128) NOT NULL,
    PRIMARY KEY (id_aluno)
);

CREATE TABLE pedido 
(
	id_pedido INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    fk_aluno INT UNSIGNED NOT NULL,
    datahora DATETIME NOT NULL,
    PRIMARY KEY(id_pedido),
    FOREIGN KEY(fk_aluno) REFERENCES aluno(id_aluno)
);

CREATE TABLE pedido_detalhe
(
	fk_id_pedido INT UNSIGNED NOT NULL,
    fk_curso INT UNSIGNED NOT NULL,
    valor DOUBLE NOT NULL,
    PRIMARY KEY (fk_id_pedido, fk_curso),
    FOREIGN KEY (fk_id_pedido) REFERENCES pedido(id_pedido),
    FOREIGN KEY (fk_curso) REFERENCES curso(id_curso)
);
