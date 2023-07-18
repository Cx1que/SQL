SELECT * FROM aluno;
SELECT curso FROM curso;
SELECT curso, valor FROM curso
WHERE valor > 200;
SELECT curso, valor FROM curso
WHERE valor BETWEEN 200 AND 300;
SELECT * FROM pedido
WHERE data_compra BETWEEN '12010/04/15' AND '2010/04/18';
SELECT * FROM pedido
WHERE data_compra = '2010-04-15';

SELECT * FROM curso;
