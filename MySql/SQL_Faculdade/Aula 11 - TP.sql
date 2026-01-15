USE Empresa;

SELECT * FROM Departamentos;
SELECT * FROM Funcionarios;

-- 1 --
CREATE VIEW vw_Func
AS
SELECT cd_funcionario AS 'Código', 
	nm_funcionario AS 'Nome', 
	nm_departamento AS 'Departamento' 
FROM 
	Funcionarios F INNER JOIN Departamentos D ON F.cd_departamento = D.cd_departamento;

--2--
SELECT * FROM vw_Func WHERE Departamento LIKE '%Compras%' ORDER BY Nome ASC;

--3--
ALTER TRIGGER Departamento_dl_trg ON Departamentos
FOR DELETE
AS
BEGIN
	ROLLBACK TRANSACTION
	PRINT ('Exclusão não autorizada!')
END
--TESTE--
DELETE FROM Departamentos WHERE cd_departamento = 8;

-- 4 --
SELECT AVG(vl_salario_hora_funcionario) AS 'Média Salarial de Contabilidade' FROM Funcionarios WHERE cd_departamento =2;

-- 5 --
SELECT nm_funcionario AS 'Nome',
	vl_salario_hora_funcionario AS 'Salário/Hora' 
FROM Funcionarios 
WHERE vl_salario_hora_funcionario > (SELECT AVG(vl_salario_hora_funcionario) FROM Funcionarios)
ORDER BY nm_funcionario ASC;

-- 6 --
SELECT nm_departamento AS 'Departamento', 
	AVG(vl_salario_hora_funcionario) AS 'Média Salário/Hora' 
FROM Departamentos D, Funcionarios F 
WHERE D.cd_departamento = F.cd_departamento 
GROUP BY nm_departamento; 

-- 7 --
SELECT nm_departamento AS 'Departamento', 
	COUNT(*) AS 'Funcionários/Departamento' 
FROM Departamentos D, Funcionarios F 
WHERE D.cd_departamento = F.cd_departamento 
GROUP BY nm_departamento; 

-- 8 --
ALTER PROC up_salario_simulacao_P
@porcentual INT = 0
AS
BEGIN
	IF (@porcentual > 0)
		SELECT nm_funcionario AS 'Nome', 
		vl_salario_hora_funcionario AS 'Salário/Hora Atual', 
		vl_salario_hora_funcionario + (vl_salario_hora_funcionario * @porcentual/100) AS 'Projeção Salarial' 
		FROM Funcionarios ORDER BY nm_funcionario ASC;
END

EXEC up_salario_simulacao_P 20;

-- 9 --
ALTER PROC up_salario_simulacao_P
@porcentual INT = 0
AS
BEGIN
	IF (@porcentual > 0 AND @porcentual < 101)
		SELECT nm_funcionario AS 'Nome', 
		vl_salario_hora_funcionario AS 'Salário/Hora Atual', 
		vl_salario_hora_funcionario + (vl_salario_hora_funcionario * @porcentual/100) AS 'Projeção Salarial' 
		FROM Funcionarios ORDER BY nm_funcionario ASC;
	ELSE
		PRINT 'Parâmetro Inválido'
END

EXEC up_salario_simulacao_P 900;

-- 10 --
ALTER PROC up_salario_P
@cfun INT = 0, 
@porcentual INT = 0
AS
BEGIN
	IF (@porcentual > 0 AND @porcentual < 101 AND @cfun >= 0)
	BEGIN
		SELECT nm_funcionario AS 'Nome', 
			vl_salario_hora_funcionario AS 'Salário/Hora Atual', 
			vl_salario_hora_funcionario + (vl_salario_hora_funcionario * @porcentual/100) AS 'Projeção Salarial' 
		FROM Funcionarios WHERE cd_funcionario = @cfun;
		UPDATE Funcionarios SET vl_salario_hora_funcionario = vl_salario_hora_funcionario + (vl_salario_hora_funcionario * @porcentual/100) WHERE cd_funcionario = @cfun;
		SELECT * FROM Funcionarios WHERE cd_funcionario = @cfun;
	END
	ELSE
		PRINT 'Parâmetro Inválido'
END

EXEC up_salario_P 25, 30;
EXEC up_salario_P 25, 300;

-- 11 -- 
ALTER PROC ls_salario_mes_P
@cd INT = 0,
@nome VARCHAR(50)= ''
AS
BEGIN
	IF (@cd <> 0 AND @nome = '')
		SELECT nm_funcionario AS 'Nome',
		vl_salario_hora_funcionario AS 'Salário/Hora',
		vl_salario_hora_funcionario*40 AS 'Salário do mês' 
		FROM Funcionarios
		WHERE cd_funcionario = @cd;
	ELSE IF (@nome <> '')
		SELECT nm_funcionario AS 'Nome',
		vl_salario_hora_funcionario AS 'Salário/Hora',
		vl_salario_hora_funcionario*40 AS 'Salário do mês'
		FROM Funcionarios
		WHERE nm_funcionario LIKE '%' + @nome + '%';
	ELSE
		PRINT 'Parâmetro inválido!'
END

EXEC ls_salario_mes_P 0, 'mAR';

-- 12 --
DISABLE TRIGGER Departamento_dl_trg ON Departamentos;

-- 13 --
DROP TRIGGER Departamento_dl_trg;