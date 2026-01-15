USE TP3;

SELECT * FROM Funcionarios;

SELECT nm_funcionario, vl_salario_hora_funcionario FROM Funcionarios
ORDER BY vl_salario_hora_funcionario; 

SELECT nm_funcionario, vl_salario_hora_funcionario FROM Funcionarios
ORDER BY vl_salario_hora_funcionario, nm_funcionario; 

SELECT nm_funcionario FROM Funcionarios WHERE nm_funcionario LIKE 'S%'; 

SELECT nm_funcionario FROM Funcionarios WHERE nm_funcionario LIKE '%Claudio%'; 

SELECT nm_funcionario, vl_salario_hora_funcionario FROM Funcionarios 
WHERE vl_salario_hora_funcionario >= 5.00 AND vl_salario_hora_funcionario <= 10.00
ORDER BY vl_salario_hora_funcionario, nm_funcionario; 

SELECT nm_funcionario, cd_funcionario FROM Funcionarios WHERE nm_funcionario LIKE '%Daniel Freitas%';
DELETE FROM Funcionarios WHERE cd_funcionario = 36; 

SELECT nm_funcionario, cd_funcionario FROM Funcionarios WHERE nm_funcionario LIKE '%William Pereira%';
UPDATE Funcionarios SET vl_salario_hora_funcionario = 45.00 WHERE cd_funcionario = 25; 

INSERT INTO Funcionarios VALUES ('José de Castro Nascimento', '24/08/2018', 55.00);
SELECT * FROM Funcionarios 
WHERE nm_funcionario = 'José de Castro Nascimento' AND vl_salario_hora_funcionario = 55.00 

SELECT vl_salario_hora_funcionario*1.07 FROM  Funcionarios  WHERE vl_salario_hora_funcionario <=15.00;
UPDATE Funcionarios SET vl_salario_hora_funcionario*1.07 WHERE vl_salario_hora_funcionario <=15.00;
