USE Universidade;

SELECT * FROM Cursos;
SELECT * FROM Faculdades;
SELECT * FROM Matricula;

SELECT * FROM Alunos;

/*CREATE TABLE Alunos (
	cd_aluno int NOT NULL IDENTITY (1,1),
	nm_aluno varchar(60) NOT NULL,
	dt_nascimento_aluno date NOT NULL,
	PRIMARY KEY (cd_aluno)
);*/

/*CREATE TABLE Matricula (
	cd_matricula int NOT NULL IDENTITY (1,1),
	dt_ingresso_curso date NOT NULL,
	PRIMARY KEY (cd_matricula)
);*/

--INSERT INTO Matricula VALUES(5,1, '01-05-2020');
--UPDATE Matricula SET cd_curso = 3 WHERE cd_aluno = 7;

SELECT nm_aluno AS 'Aluno',nm_curso AS 'Curso',dt_ingresso_curso AS 'Data de Ingresso' FROM Alunos,Cursos,Matricula ORDER BY nm_curso,nm_aluno ASC;

/*SELECT A.nm_aluno AS 'Aluno', C.nm_curso AS 'Curso'
	   FROM
	   Alunos A INNER JOIN Cursos C ON A.nm_aluno = C.nm_curso;*/

SELECT a.nm_aluno,
	   c.nm_curso,
	   FORMAT(ac.dt_nascimento_aluno, 'dd/MM/yyyy')
FROM   Matricula ac
INNER JOIN Alunos a
ON ac.cd_aluno = a.cd_aluno
INNER JOIN Cursos c
ON ac.dc_cuso = c.cd_curso
ORDER BY c.nm_curso, a.nm_aluno;

SELECT COUNT (*) nm_curso AS 'Quantidade de alunos' FROM Cursos;