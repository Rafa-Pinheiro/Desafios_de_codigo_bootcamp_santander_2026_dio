--> ANOTAÇÕES BY -> RAFAELA PINHEIRO <- AULA 8 --

--> COPIAR ARQUIVO (.mdf) E (.ldf) PARA A PASTA -> C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA --
--> HABILITAR SERVIÇOS SQL Server (SQLEXPRESS)
--> CONECTAR
--> BOTÃO DIREITO NO BANCO DE DADOS -> ADICIONAR
--> TABELAS -> BOTÃO DIREITO  -> DESIGN
--> NOVA CONSULTA


USE Universidade;

SELECT * FROM Cursos;
SELECT * FROM Faculdades;

-->** SP - STORED PROCEDURE **<--

	-->INSERIR FACULDADE <--
	CREATE PROC in_Faculdades_insereFaculdadeP
	@nomeFaculdade varchar(70)
	AS
	BEGIN
		IF LEN(@nomefaculdade) <> 0
			INSERT Faculdades VALUES (@nomeFaculdade)
		ELSE
			PRINT 'Entrada inválida.'
	END

	--TESTE--
	EXEC in_Faculdades_insereFaculdadeP 'Ciências Humanas'; 
	-- JÁ EXECUTADO
	

	--> UPDATE DAS MENSALIDADES <-- 
	CREATE PROC up_Cursos_alteraValorCursoP
	@cdCurso  smallint = 0,
	@vlCurso numeric (7,2)
	AS 
	BEGIN
		IF LEN(@cdCurso) <> 0 AND @vlCurso > 0
			UPDATE Cursos SET vl_curso = @vlCurso WHERE cd_curso = @cdCurso
		ELSE
			PRINT 'Parametros inválidos'
	END

	-- TESTE --
	EXEC up_Cursos_alteraValorCursoP 5, 2350.00;
	EXEC up_Cursos_alteraValorCursoP 6, 1274.00;
	EXEC up_Cursos_alteraValorCursoP 7, 5623.69;
	-- JÁ EXECUTADO

	--> SELECT CURSO <--
	ALTER PROC sl_Curso_buscaNomeCursoP
	@nomeCurso varchar(70)
	AS
	BEGIN
		IF LEN(@nomeCurso) <> 0
			SELECT nm_curso FROM Cursos WHERE nm_curso LIKE '%' + @nomeCurso + '%'
		ELSE 
			PRINT 'Parametro Inválido'
	END

	-- TESTE --
	EXEC sl_Curso_buscaNomeCursoP 'pia';
	-- JÁ EXECUTADO

	--> DELETE CURSO <--
	ALTER PROC dl_Curso_deletarCursoP
	@cdCurso smallint = 0
	--Aqui iria o WITH ENCRYPTION para criptografar
	WITH ENCRYPTION
	AS
	BEGIN
		IF LEN(@cdCurso) <> 0 
			DELETE FROM Cursos WHERE cd_curso = @cdCurso
		ELSE
			PRINT 'Deu Ruim'
	END
	-- TESTE --
	EXEC dl_Curso_deletarCursoP 1;
	-- JÁ EXECUTADO

-->** TRIGGER **<--

	CREATE TRIGGER  Faculdades_del_trg ON Faculdades
	FOR DELETE
	AS
	BEGIN
		PRINT 'Não é possível excluir registros da tabela Faculdades.'
		ROLLBACK TRANSACTION -- VOLTA A TRANSAÇÃO ANTERIOR
	END

	-- TESTE --
	DELETE FROM Faculdades WHERE cd_faculdade = 4; -- erro pelo trigger
	DELETE FROM Faculdades; -- erro por dependencia entre tabelas

	-- DESABILITAR TEMPORARIAMENTE --
	DISABLE TRIGGER Faculdades_del_trg ON Faculdades;
	-- HABILITAR TRIGGER -- 
	ENABLE TRIGGER Faculdades_del_trg ON Faculdades;
	-- ALTERAR TRIGGER --
	ALTER TRIGGER  Faculdades_del_trg ON Faculdades
	FOR DELETE
	AS
	BEGIN
		PRINT 'Não é possível excluir registros da tabela Faculdades.'
		ROLLBACK TRANSACTION -- VOLTA A TRANSAÇÃO ANTERIOR
	END
	-- DELETAR TRIGGER --
	DROP TRIGGER Faculdades_del_trg; -- CUIDADO!


--> AULA PASSADA (6 & 7) -> COMANDOS <-- 

	SELECT nm_curso AS 'Curso', vl_curso AS 'Preço', vl_curso*1.1 AS 'Novo Preço' FROM Cursos;                  

	-- O AS da um novo título a coluna

	SELECT MAX(vl_curso) AS 'Maior Valor' FROM Cursos;																		

	-- O MAX demonstra o maior valor

	SELECT MIN(vl_curso) AS 'Menor Valor' FROM Cursos;																		

	-- O MIN demonstra o menor valor

	SELECT AVG(vl_curso) AS 'Média  dos Valores' FROM Cursos;																

	-- O AVG demonstra a média dos valores

	SELECT MAX(vl_curso) AS 'Maior Valor', 
	MIN(vl_curso) AS 'Menor Valor', 
	AVG(vl_curso) AS 'Média  dos Valores' 
	FROM Cursos;		

	-- É possível colocar todos na mesma linha

	SELECT nm_curso, vl_curso FROM Cursos WHERE cd_faculdade = 2;

	SELECT AVG(vl_curso) AS 'Média  dos Valores' 
	FROM Cursos 
	WHERE cd_faculdade = 2;

	SELECT SUM(vl_curso) AS 'Soma dos valores' FROM Cursos;																	

	-- O SUM demonstra a soma dos valores selecionados

	SELECT COUNT(*) AS 'Quantidade de valores' FROM Cursos;																				

	-- O COUNT retorna a quantidade de linhas da tabela

	SELECT COUNT(vl_curso) AS 'Quantidade de valores' FROM Cursos;															

	-- O COUNT retorna a quantidade de linhas da tabela(não nulos) neste caso


	SELECT nm_curso AS 'Curso', 
	vl_curso AS 'Preço', 
	nm_faculdade AS 'Faculdade' 
	FROM Cursos, Faculdades 
	WHERE Cursos.cd_faculdade = Faculdades.cd_faculdade 
	AND vl_curso <> 1500 
	ORDER BY vl_curso ASC;
	-- O WHERE Cursos.cd_faculdade = Faculdades.cd_faculdade interliga as colunas de cursos com as de faculdade(Junção Natural)

	SELECT nm_curso AS 'Curso', 
	vl_curso AS 'Preço', 
	nm_faculdade AS 'Faculdade' 
	FROM Cursos 
	INNER JOIN Faculdades 
	ON Cursos.cd_faculdade = Faculdades.cd_faculdade 
	AND vl_curso <> 0 
	ORDER BY vl_curso ASC; 
	-- O INNER JOIN FAZ A MESMA COISA QUE A FORMA ANTERIOR

	SELECT DISTINCT(vl_curso) FROM Cursos;
	-- DISTINCT SELECIONA APENAS OS DADOS DIFERENTES

	SELECT nm_curso, vl_curso
	FROM Cursos
	WHERE vl_curso BETWEEN 2000 AND 3000;                        
	-- O BETWEEN junto ao AND asão usados para simplificar a escrita de valores na consulta, aqui ele seleciona mensalidades entre 2000 e 3000

	SELECT nm_curso
	FROM Cursos
	WHERE cd_curso IN (1,5,6);

	--O DROP TABLE destrói a tabela inteira(perigoso usar)



-->** FIM DA AULA **<--