USE Universidade;

SELECT * FROM Cursos;
SELECT * FROM Faculdades;

UPDATE Cursos SET vl_mensalidade_curso = 1000 WHERE cd_faculdade = 1;
UPDATE Cursos SET vl_mensalidade_curso = 1500 WHERE cd_curso = 6;
UPDATE Cursos SET vl_mensalidade_curso = 2200 WHERE cd_curso = 7;

CREATE VIEW vw_Cursos
AS
SELECT nm_curso, vl_mensalidade_curso FROM Cursos;

SELECT * FROM vw_Cursos;

CREATE VIEW vw_CursosFaculdades
AS
SELECT nm_curso, vl_mensalidade_curso, nm_faculdade FROM Cursos,Faculdades;

SELECT * FROM vw_CursosFaculdades;

/*ALTER VIEW vw_CursosFaculdades
AS
SELECT nm_curso, vl_mensalidade_curso, nm_faculdade FROM Cursos,Faculdades WHERE Cursos.cd_faculdade = Faculdades.cd_faculdade;

SELECT * FROM vw_CursosFaculdades;
*/

--OU

ALTER VIEW vw_CursosFaculdades
AS
SELECT C.nm_curso AS 'Curso', F.nm_faculdade AS 'Faculdade',
	   C.vl_mensalidade_curso AS 'Mensalidade' FROM
	   Cursos C INNER JOIN Faculdades F ON C.cd_faculdade = F.cd_faculdade

SELECT * FROM vw_CursosFaculdades ORDER BY Curso;

-- As VIEWS são encontradas na aba de Exibições

-- NUNCA apague/atualize nenhum registro por nome

SELECT * FROM vw_Cursos;

DELETE FROM vw_Cursos WHERE nm_curso = 'Biomedicina';
UPDATE vw_Cursos SET vl_mensalidade_curso = 2500 WHERE nm_curso = 'Fisioterapia';         --Apagou por nome porque não tem 'cd' na VIEW
INSERT INTO vw_Cursos VALUES ('Biomedicina', 2200);

SELECT * FROM Cursos;

INSERT INTO Cursos VALUES('Engenharia Elétrica',1,NULL)
INSERT INTO Cursos VALUES('Engenharia de Produção',1,NULL)
INSERT INTO Cursos VALUES('Engenharia Química',1,NULL)
INSERT INTO Cursos VALUES('Psicologia',2,NULL)
INSERT INTO Cursos VALUES('Direito',2,NULL)
INSERT INTO Cursos VALUES('Medicina',2,NULL)
INSERT INTO Cursos VALUES('Enfermagem',2,NULL)

--UPDATE Cursos SET cd_Faculdade = 3 WHERE cd_curso = 16;

SELECT MIN(vl_mensalidade_curso) AS 'Menor Valor' FROM Cursos;

--Subconsulta(uma consulta dentro de outra, uma consulta com base em outra consulta):

SELECT AVG(vl_mensalidade_curso) AS 'Valor Médio' FROM Cursos;

SELECT nm_curso,vl_mensalidade_curso FROM Cursos WHERE vl_mensalidade_curso <= 2201;

--OU

SELECT nm_curso,vl_mensalidade_curso FROM Cursos WHERE vl_mensalidade_curso <= (SELECT AVG(vl_mensalidade_curso) FROM Cursos);

--Sumários de Dados(resumo estatístico de informações):

SELECT COUNT(*) AS 'Número de Cursos'FROM Cursos WHERE cd_faculdade = 1;
SELECT COUNT(*) AS 'Número de Cursos'FROM Cursos WHERE cd_faculdade = 2;

SELECT * FROM Cursos;
SELECT * FROM Faculdades;

SELECT F.nm_faculdade, COUNT(*) FROM Cursos C,Faculdades F WHERE F.cd_faculdade = C.cd_faculdade GROUP BY nm_faculdade;

SELECT F.nm_faculdade, COUNT(*) FROM Cursos C,Faculdades F WHERE F.cd_faculdade = C.cd_faculdade GROUP BY nm_faculdade ORDER BY COUNT(*) DESC;

SELECT F.nm_faculdade, COUNT(*) FROM Cursos C,Faculdades F WHERE F.cd_faculdade = C.cd_faculdade GROUP BY nm_faculdade HAVING COUNT(*)>= 3 ORDER BY COUNT(*) DESC;

