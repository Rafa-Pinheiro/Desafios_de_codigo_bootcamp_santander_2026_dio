USE Universidade

SELECT * FROM Cursos;
SELECT * FROM Faculdades;

-- O *(asterisco) seleciona todos os atributos(colunas)

INSERT INTO Cursos(nm_curso, cd_Faculdade)
VALUES ('Odontologia', 2);
INSERT INTO Cursos(nm_curso, cd_Faculdade)
VALUES ('Multimídia/Jornalismo', 2);

--UPDATE Cursos SET cd_faculdade = 4 WHERE cd_curso = 10;
UPDATE Cursos SET nm_curso = 'Produção Multimídia' WHERE cd_curso = 10;

INSERT INTO Faculdades VALUES ('Ciências Sociais Aplicadas');

SELECT nm_curso FROM Cursos;
SELECT cd_curso, nm_curso FROM Cursos;

SELECT nm_curso FROM Cursos ORDER BY nm_curso ASC;                 -- Ordem ascendente
SELECT nm_curso FROM Cursos ORDER BY nm_curso DESC;				   -- Ordem descendente

UPDATE Cursos SET vl_mensalidade_curso = 1891.44 WHERE cd_curso = 3;
UPDATE Cursos SET vl_mensalidade_curso = 1891.44 WHERE cd_curso = 5;
UPDATE Cursos SET vl_mensalidade_curso = 1209.88 WHERE cd_curso = 6;
UPDATE Cursos SET vl_mensalidade_curso = 2228.88 WHERE cd_curso = 7;
UPDATE Cursos SET vl_mensalidade_curso = 3634.14 WHERE cd_curso = 9; 
UPDATE Cursos SET vl_mensalidade_curso = 1563.99 WHERE cd_curso = 10; 

SELECT * FROM Cursos WHERE nm_curso = 'Engenharia de Computação';
SELECT * FROM Cursos WHERE cd_curso = 3;

-- Operadores que ele aceita: >, <, >=, <=, <>, =, != AND, OR, NOT

SELECT * FROM Cursos WHERE vl_mensalidade_curso >= 1000 AND vl_mensalidade_curso <= 1600;

INSERT INTO Cursos VALUES ('Jornalismo', NULL, 4);

SELECT * FROM Cursos WHERE vl_mensalidade_curso IS NULL;
SELECT * FROM Cursos WHERE vl_mensalidade_curso IS NOT NULL;

SELECT nm_curso FROM Cursos WHERE nm_curso LIKE 'Eng%';							-- O simbolo de porcentagem determina onde quero acaba a especificação de cada um
SELECT nm_curso FROM Cursos WHERE nm_curso LIKE '%ção';
SELECT nm_curso FROM Cursos WHERE nm_curso LIKE '%ção%';

SELECT * FROM Cursos WHERE cd_faculdade != 1;
--Ou
SELECT nm_curso FROM Cursos WHERE nm_curso NOT LIKE 'Engenharia%';

DELETE FROM Cursos WHERE cd_curso = 11;
