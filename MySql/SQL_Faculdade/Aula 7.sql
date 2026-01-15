-- Aula 07

INSERT INTO Cursos 
VALUES('Engenharia Elétrica', NULL, 1),
	  ('Odontologia', NULL, 2),
	  ('Enfermagem', NULL, 2);

UPDATE Cursos SET vl_mensalidade_curso = 1209.90 WHERE cd_curso = 6;                           -- Dava para ter usado o OR em valores iguais   Ex: WHERE cd_curso = 6 OR cd_curso = 11
UPDATE Cursos SET vl_mensalidade_curso = 1209.90 WHERE cd_curso = 11;
UPDATE Cursos SET vl_mensalidade_curso = 1891.44 WHERE cd_faculdade = 1;
UPDATE Cursos SET vl_mensalidade_curso = 2228.88 WHERE cd_curso = 7;
UPDATE Cursos SET vl_mensalidade_curso = 3634.14 WHERE cd_curso = 10;

INSERT INTO Cursos 
VALUES('Administração de Empresas', NULL, 3);

SELECT * FROM Cursos;
SELECT * FROM Faculdades;

SELECT nm_curso AS 'Curso', vl_mensalidade_curso AS 'Preço', vl_mensalidade_curso*1.1 AS 'Novo Preço' FROM Cursos;                  

-- O AS da um novo título a coluna

SELECT MAX(vl_mensalidade_curso) AS 'Maior Valor' FROM Cursos;																		

-- O MAX demonstra o maior valor

SELECT MIN(vl_mensalidade_curso) AS 'Menor Valor' FROM Cursos;																		

-- O MIN demonstra o menor valor

SELECT AVG(vl_mensalidade_curso) AS 'Média  dos Valores' FROM Cursos;																

-- O AVG demonstra a média dos valores

SELECT MAX(vl_mensalidade_curso) AS 'Maior Valor', MIN(vl_mensalidade_curso) AS 'Menor Valor', AVG(vl_mensalidade_curso) AS 'Média  dos Valores' FROM Cursos;		

-- É possível colocar todos na mesma linha

SELECT nm_curso, vl_mensalidade_curso FROM Cursos WHERE cd_faculdade = 2;

SELECT AVG(vl_mensalidade_curso) AS 'Média  dos Valores' FROM Cursos WHERE cd_faculdade = 2;

SELECT SUM(vl_mensalidade_curso) AS 'Soma dos valores' FROM Cursos;																	

-- O SUM demonstra a soma dos valores selecionados

SELECT COUNT(*) AS 'Quantidade de valores' FROM Cursos;																				

-- O COUNT retorna a quantidade de linhas da tabela

SELECT COUNT(vl_mensalidade_curso) AS 'Quantidade de valores' FROM Cursos;															

-- O COUNT retorna a quantidade de linhas da tabela(não nulos) neste caso

SELECT * FROM Cursos, Faculdades;

SELECT * FROM Cursos, Faculdades WHERE Cursos.cd_faculdade = Faculdades.cd_faculdade;				

-- O WHERE Cursos.cd_faculdade = Faculdades.cd_faculdade interliga as colunas de cursos com as de faculdade(Junção Natural)

SELECT nm_curso AS 'Curso', vl_mensalidade_curso AS 'Preço', nm_faculdade AS 'Faculdade' FROM Cursos, Faculdades WHERE Cursos.cd_faculdade = Faculdades.cd_faculdade;

SELECT nm_curso AS 'Curso', vl_mensalidade_curso AS 'Preço', nm_faculdade AS 'Faculdade' FROM Cursos, Faculdades WHERE Cursos.cd_faculdade = Faculdades.cd_faculdade AND vl_mensalidade_curso > 1500 ORDER BY vl_mensalidade_curso ASC;

SELECT nm_curso AS 'Curso', vl_mensalidade_curso AS 'Preço', nm_faculdade AS 'Faculdade' FROM Cursos INNER JOIN Faculdades ON Cursos.cd_faculdade = Faculdades.cd_faculdade AND vl_mensalidade_curso > 1500 ORDER BY vl_mensalidade_curso ASC;     

-- Quase Mesma coisa do de cima

SELECT DISTINCT(vl_mensalidade_curso) FROM Cursos;

SELECT nm_curso, vl_mensalidade_curso
FROM Cursos
WHERE vl_mensalidade_curso BETWEEN 2000 AND 3000;                        

-- O BETWEEN junto ao AND asão usados para simplificar a escrita de valores na consulta, aqui ele seleciona mensalidades entre 2000 e 3000

SELECT nm_curso
FROM Cursos
WHERE cd_curso IN (1,5,6);

SELECT * FROM Cursos;

--O DROP TABLE destrói a tabela inteira(perigoso usar)

CREATE PROCEDURE sl_Cursos_contaCursos															

-- É como se fosse criar uma função que poderá ser executada
AS
SELECT COUNT(*) AS 'Quantidade de cursos' FROM Cursos;

EXEC sl_Cursos_contaCursos;																		

-- O EXEC executa a Stored Procedure selecionada

ALTER PROC sl_Cursos_contaCursos
AS
SELECT COUNT(cd_curso) FROM Curso;

DROP PROC sl_Cursos_contaCursos;

EXEC sl_Cursos_contaCursos;

CREATE PROCEDURE sl_Cursos_contaCursosSaudeP															

--Quando termina com P ou Params, é porque aceita parâmetros
@codigoFaculdade	smallint
AS
SELECT COUNT(nm_curso) AS 'Quantidade de cursos' FROM Cursos WHERE cd_faculdade = @codigoFaculdade;

EXEC sl_Cursos_contaCursosSaudeP 2;
EXEC sl_Cursos_contaCursosSaudeP 3;

EXEC sl_Cursos_contaCursosSaudeP 'bd';

ALTER PROCEDURE sl_Cursos_contaCursosSaudeP															

--o ALTER altera o Stored Procedure
@codigoFaculdade	smallint = 0
AS
SELECT COUNT(nm_curso) AS 'Quantidade de cursos' FROM Cursos WHERE cd_faculdade = @codigoFaculdade;

EXEC sl_Cursos_contaCursosSaudeP;
EXEC sl_Cursos_contaCursosSaudeP 3;