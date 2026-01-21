CREATE DATABASE IF NOT EXISTS viagens;

CREATE TABLE IF NOT EXISTS  viagens.usuarios (
	id INT PRIMARY KEY AUTO_INCREMENT COMMENT "IDENTIFICADOR UNICO DO USUÁRIO",
    nome VARCHAR (255) NOT NULL COMMENT "NOME DO USUÁRIO",
    email VARCHAR (100) NOT NULL UNIQUE COMMENT "EMAIL EXCLUSIVO DO USUÁRIO",
    endereco VARCHAR (50) NOT NULL COMMENT "ENDEREÇO DO USUÁRIO",
    data_de_nascimento DATE NOT NULL COMMENT "DATA DE NASCIMENTO DO USUÁRIO"
);

CREATE TABLE IF NOT EXISTS  viagens.destinos (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (255) NOT NULL UNIQUE COMMENT "Nome do destino",
    descricao VARCHAR (255) NOT NULL COMMENT "Descrição do destino"
);


CREATE TABLE IF NOT EXISTS viagens.reservas (
	id INT PRIMARY KEY AUTO_INCREMENT COMMENT "IDENTIFICADOR UNICO DA RESERVA",
    id_usuario INT COMMENT "CHAVE ESTRANGEIRA DO USUÁRIO QUE FEZ A RESERVA", 
    --Sem Foreign Key por enquanto.
    id_destino INT COMMENT "CHAVE ESTRANGEIRA DO DESTINO DA RESERVA",
    data DATE COMMENT "DATA DA RESERVA",
    status VARCHAR (255) DEFAULT "PENDENTE" COMMENT "STATUS DA RESERVA (CONFIRMADA, PENDENTE, CANCELADA, ETC.)"
);

INSERT IGNORE INTO  viagens.usuarios (nome, email, endereco, data_de_nascimento) VALUES 
("Ana Silva", "ana.silva@email.com", "Rua das Flores, 123, Santos, SP", "1990-05-15"),
("Bruno Costa", "bruno.costa@email.com", "Avenida Paulista, 456, São Paulo, SP", "1985-08-22"),
("Carla Mendes", "carla.mendes@email.com", "Travessa das Rosas, 789, Rio de Janeiro, RJ", "1992-12-03"),
("Daniel Oliveira", "daniel.oliveira@email.com", "Praça da Liberdade, 101, Belo Horizonte, MG", "1988-03-10"),
("Eduarda Ferreira", "eduarda.ferreira@email.com", "Alameda dos Anjos, 202, Salvador, BA", "1995-07-07"),
("Felipe Gomes", "felipe.gomes@email.com", "Rua das Palmeiras, 303, Recife, PE", "1991-11-20"),
("Gabriela Rocha", "gabriela.rocha@email.com", "Praça das Flores, 404, São Paulo, SP", "1993-09-18"),
("Hugo Santos", "hugo.santos@email.com", "Rua das Flores, 505, Rio de Janeiro, RJ", "1994-02-28"),
("Isabela Almeida", "isabela.almeida@email.com", "Rua das Flores, 606, Belo Horizonte, MG", "1992-04-12"),
("João Pereira", "joao.pereira@email.com", "Rua das Flores, 707, Salvador, BA", "1990-06-15"),
("Karina Souza", "karina.souza@email.com", "Rua das Flores, 808, Recife, PE", "1993-01-25"),
("Lucas Ribeiro", "lucas.ribeiro@email.com", "Rua das Flores, 909, São Paulo, SP", "1994-08-18"),
("Mariana Lima", "mariana.lima@email.com", "Rua das Flores, 1010, Rio de Janeiro, RJ", "1992-07-20"),
("Nicolas Fernandes", "nicolas.fernandes@email.com", "Rua das Flores, 1111, Belo Horizonte, MG", "1990-09-05"),
("Olivia Martins", "olivia.martins@email.com", "Rua das Flores, 1212, Salvador, BA", "1993-05-10"),
("Pedro Carvalho", "pedro.carvalho@email.com", "Rua das Flores, 1313, Recife, PE", "1992-03-15"),
("Quintina Dias", "quintina.dias@email.com", "Rua das Flores, 1414, São Paulo, SP", "1990-12-05"),
("Rafael Nunes", "rafael.nunes@email.com", "Rua das Flores, 1515, Rio de Janeiro, RJ", "1991-04-20"),
("Sofia Castro", "sofia.castro@email.com", "Rua das Flores, 1616, Belo Horizonte, MG", "1992-08-08");

INSERT IGNORE INTO viagens.destinos (nome, descricao) VALUES 
("Paris", "A cidade das luzes e do amor, famosa por sua arquitetura icônica e cultura rica."),
("Nova York", "A cidade que nunca dorme, conhecida por seus arranha-céus e diversidade cultural."),
("Tóquio", "Uma metrópole vibrante que combina tradição e modernidade, famosa por sua tecnologia avançada."),
("Rio de Janeiro", "Conhecida por suas praias deslumbrantes, o Cristo Redentor e o Carnaval animado."),
("Sydney", "Famosa por sua Ópera icônica e belas praias, oferecendo uma mistura de vida urbana e natureza."),
("Roma", "A cidade eterna, repleta de história antiga, arte e arquitetura impressionante."),
("Londres", "Uma cidade cosmopolita com uma rica história, museus renomados e marcos famosos."),
("Barcelona", "Conhecida por sua arquitetura única de Gaudí, praias e vibrante vida cultural."),
("Dubai", "Um destino luxuoso conhecido por seus arranha-céus futuristas, compras e entretenimento."),
("Cidade do Cabo", "Famosa por sua beleza natural, montanhas imponentes e praias deslumbrantes."),
("Bangkok", "Uma cidade vibrante conhecida por seus templos ornamentados, vida noturna animada e culinária deliciosa."),
("Vancouver", "Famosa por sua beleza natural, com montanhas, florestas e o oceano próximos à cidade."),
("Buenos Aires", "Conhecida como a 'Paris da América do Sul', famosa por sua arquitetura europeia e cultura do tango."),
("Amsterdã", "Famosa por seus canais pitorescos, museus de classe mundial e atmosfera descontraída."),
("Cairo", "Lar das antigas pirâmides e da rica história egípcia, oferecendo uma experiência cultural única."),
("Lisboa", "Conhecida por suas colinas pitorescas, arquitetura histórica e deliciosa culinária portuguesa."),
("Viena", "Famosa por sua música clássica, palácios imperiais e cafés elegantes."),
("Praga", "Uma cidade encantadora com arquitetura gótica, pontes históricas e uma rica herança cultural."),
("Moscou", "Conhecida por sua arquitetura impressionante, história rica e vida cultural vibrante.");

SELECT nome FROM destinos WHERE nome LIKE '%RI%';
SELECT * FROM viagens.usuarios WHERE data_de_nascimento BETWEEN '1990-01-01' AND '1995-12-31';
SELECT COUNT(*) AS total_usuarios FROM viagens.usuarios;

UPDATE viagens.usuarios SET endereco = "Avenida das Américas, 500" WHERE nome = "Bruno Costa";
DELETE FROM viagens.usuarios WHERE email = "bruno.costa@email.com";

CREATE TABLE IF NOT EXISTS  viagens.usuarios_new (
	id INT PRIMARY KEY AUTO_INCREMENT COMMENT "IDENTIFICADOR UNICO DO USUÁRIO",
    nome VARCHAR (255) NOT NULL COMMENT "NOME DO USUÁRIO",
    email VARCHAR (255) NOT NULL UNIQUE COMMENT "EMAIL EXCLUSIVO DO USUÁRIO",
    endereco VARCHAR (100) NOT NULL COMMENT "ENDEREÇO DO USUÁRIO",
    data_de_nascimento DATE NOT NULL COMMENT "DATA DE NASCIMENTO DO USUÁRIO"
);

INSERT IGNORE INTO viagens.usuarios_new (nome, email, endereco, data_de_nascimento) 
SELECT nome, email, endereco, data_de_nascimento 
FROM viagens.usuarios;

SELECT * FROM viagens.usuarios_new;

DROP TABLE viagens.usuarios;
RENAME TABLE viagens.usuarios_new TO viagens.usuarios;
ALTER TABLE viagens.usuarios MODIFY COLUMN email VARCHAR(150) NOT NULL UNIQUE;

ALTER TABLE viagens.reservas 
    ADD CONSTRAINT id_usuario 
        FOREIGN KEY (ID_USUARIO) 
        REFERENCES viagens.usuarios(id),
    ADD CONSTRAINT id_destino 
        FOREIGN KEY (ID_DESTINO) 
        REFERENCES viagens.destinos(id);

ALTER TABLE viagens.reservas
    ADD CONSTRAINT fk_reservas_usuario
        FOREIGN KEY (id_usuario)
        REFERENCES viagens.usuarios(id)
        ON DELETE CASCADE,
    ADD CONSTRAINT fk_reservas_destino
        FOREIGN KEY (id_destino)
        REFERENCES viagens.destinos(id)
        ON DELETE CASCADE;

INSERT INTO viagens.reservas (id_usuario, id_destino, data, status) VALUES
(1, 2, "2023-10-15", "CONFIRMADA"),
(3, 5, "2023-11-20", "PENDENTE"),
(4, 1, "2023-12-05", "CANCELADA"),
(5, 3, "2024-01-10", "CONFIRMADA"),
(6, 4, "2024-02-14", "PENDENTE"),
(7, 6, "2024-03-22", "CONFIRMADA"),
(8, 7, "2024-04-18", "CANCELADA"),
(9, 8, "2024-05-30", "PENDENTE"),
(10, 9, "2024-06-12", "CONFIRMADA");

SELECT * FROM viagens.reservas;
DELETE FROM viagens.usuarios WHERE id = 3;
SELECT * FROM viagens.reservas;

--PRIMEIRA FORMA NORMAL
--1NF: Eliminar grupos repetitivos, garantindo que cada campo contenha apenas valores atômicos.
ALTER TABLE viagens.usuarios
    ADD rua VARCHAR(100),
    ADD numero VARCHAR(10),
    ADD cidade VARCHAR(50) DEFAULT "Não informadado",
    ADD estado VARCHAR(50) DEFAULT "Não informado";
    
UPDATE viagens.usuarios
    SET rua = SUBSTRING_INDEX(endereco, ',', 1),
        numero = TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(endereco, ',', -1), ' ', 1)),
        cidade = TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(endereco, ',', -2), ',', 1)),
        estado = TRIM(SUBSTRING_INDEX(endereco, ',', -1));

ALTER TABLE viagens.usuarios
    DROP COLUMN endereco;

-- Já estamos na 2NF, pois todos os atributos não-chave dependem da chave primária (id).

-- Já estamos na 3NF, pois não há dependências transitivas entre os atributos não-chave.

-- AGORA VAMOS AS CONSULTAS AVANÇADAS

-- Joins

-- INNER JOIN -- 

SELECT * FROM viagens.usuarios us
    JOIN viagens.reservas rs
    ON us.id = rs.id_usuario
    INNER JOIN viagens.destinos ds
    ON rs.id_destino = ds.id;

INSERT IGNORE INTO  viagens.usuarios (nome, email, data_de_nascimento, rua, numero, cidade, estado) VALUES
("Ana Silva", "ana.silva@email.com", "1990-05-15", "Rua das Flores", "123", "São Paulo", "SP"),
("Carlos Oliveira", "carlos.oliveira@email.com", "1985-08-22", "Avenida Paulista", "456", "São Paulo", "SP"),
("Mariana Santos", "mariana.santos@email.com", "1992-12-30", "Travessa do Sol", "789", "Rio de Janeiro", "RJ"),
("Pedro Almeida", "pedro.almeida@email.com", "1988-03-10", "Praça da Liberdade", "321", "Belo Horizonte", "MG"),
("Juliana Costa", "juliana.costa@email.com", "1995-07-25", "Rua do Comércio", "654", "", "BA"),
("Lucas Ferreira", "lucas.ferreira@email.com", "1993-11-08", "Rua das Palmeiras", "987", "Curitiba", "PR");

SELECT * FROM viagens.usuarios us
    INNER JOIN viagens.reservas rs
    ON us.id = rs.id_usuario;

-- LEFT JOIN --
SELECT * FROM viagens.usuarios us
    LEFT JOIN viagens.reservas rs
    ON us.id = rs.id_usuario;

-- RIGHT JOIN --
SELECT * FROM viagens.reservas rs
    RIGHT JOIN viagens.destinos ds
    ON rs.id_destino = ds.id;

-- Subconsultas ou consultas aninhadas --

SELECT nome FROM viagens.destinos
    WHERE id 
    IN 
        (SELECT id_destino 
        FROM viagens.reservas 
        WHERE status = "CONFIRMADA");

SELECT nome, email FROM viagens.usuarios
    WHERE id 
    NOT IN 
        (SELECT id_usuario 
        FROM viagens.reservas 
        WHERE data > "2024-01-01");

SELECT nome,
        (SELECT COUNT(*) 
            FROM viagens.reservas rs 
            WHERE rs.id_usuario = us.id) AS total_reservas
    FROM viagens.usuarios us;

-- Funções agregadas --

SELECT COUNT(*) AS total_usuarios FROM viagens.usuarios;

SELECT COUNT(*) AS total_usuarios 
    FROM viagens.usuarios us
    INNER JOIN viagens.reservas rs
    ON us.id = rs.id_usuario
    WHERE rs.status = "CONFIRMADA";


SELECT MAX(TIMESTAMPDIFF(
            YEAR, data_de_nascimento, CURDATE())) 
        AS maior_idade
        FROM viagens.usuarios;

SELECT MIN(TIMESTAMPDIFF(
            YEAR, data_de_nascimento, CURDATE())) 
        AS menor_idade
        FROM viagens.usuarios;

SELECT AVG(TIMESTAMPDIFF(
            YEAR, data_de_nascimento, CURDATE())) AS media_idade
        FROM viagens.usuarios;

SELECT COUNT(*) AS total_reservas, status 
    FROM viagens.reservas
    GROUP BY status;

SELECT COUNT(*), id FROM viagens.reservas
    GROUP BY id_destino
    HAVING COUNT(*) > 2;

SELECT COUNT(*), id FROM viagens.reservas
    GROUP BY id_destino;

-- Ordenação de resultados --
SELECT * FROM viagens.usuarios
    ORDER BY nome ASC;

SELECT * FROM viagens.reservas
    ORDER BY data DESC;

SELECT COUNT(*) AS qtd_reservas, id_destino 
    FROM viagens.reservas
    GROUP BY id_destino
    ORDER BY qtd_reservas, id_destino DESC;

-- INDEXAÇÃO --

INSERT IGNORE INTO  viagens.usuarios (nome, email, data_de_nascimento, rua, numero, cidade, estado) VALUES
("Ana Silva", "ana.silva@email.com", "1990-05-15", "Rua das Flores", "123", "São Paulo", "SP"),
("Carlos Oliveira", "carlos.oliveira@email.com", "1985-08-22", "Avenida Paulista", "456", "São Paulo", "SP"),
("Mariana Santos", "mariana.santos@email.com", "1992-12-30", "Travessa do Sol", "789", "Rio de Janeiro", "RJ"),
("Pedro Almeida", "pedro.almeida@email.com", "1988-03-10", "Praça da Liberdade", "321", "Belo Horizonte", "MG"),
("Juliana Costa", "juliana.costa@email.com", "1995-07-25", "Rua do Comércio", "654", "", "BA"), 
("Lucas Ferreira", "lucas.ferreira@email.com", "1993-11-08", "Rua das Palmeiras", "987", "Curitiba", "PR"),
("Marcos Vinicius", "marcos.vinicius@email.com", "1991-09-12", "Rua do Comércio", "321", "Porto Alegre", "RS"),
("Fernanda Lima", "fernanda.lima@email.com", "1994-02-28", "Avenida Brasil", "555", "Salvador", "BA"),
("Tiago Souza", "tiago.souza@email.com", "1990-06-18", "Rua das Acácias", "777", "Brasília", "DF"), 
("Patrícia Gomes", "patricia.gomes@email.com", "1996-04-14", "Travessa do Sol", "888", "Fortaleza", "CE"),
("Renato Barros", "renato.barros@email.com", "1989-10-20", "Avenida Central", "111", "Manaus", "AM"),
("Aline Ribeiro", "aline.ribeiro@email.com", "1992-07-05", "Rua das Acácias", "444", "Recife", "PE"),
("Bruna Teixeira", "bruna.teixeira@email.com", "1993-01-22", "Rua das Acácias", "444", "Recife", "PE"),
("Diego Fernandes", "diego.fernandes@email.com", "1990-08-15", "Rua das Acácias", "444", "Recife", "PE"),
("Elisa Moreira", "elisa.moreira@email.com", "1990-04-12", "Rua das Acácias", "444", "Recife", "PE"),
("Fábio Cardoso", "fabio.cardoso@email.com", "1990-02-28", "Rua das Acácias", "444", "Recife", "PE"),
("Gisele Nascimento", "gisele.nascimento@email.com", "1990-01-15", "Rua das Acácias", "444", "Recife", "PE"),   
("Heitor Alves", "heitor.alves@email.com", "1990-03-15", "Rua das Acácias", "444", "Recife", "PE");

SELECT COUNT(*) AS total_usuarios FROM viagens.usuarios;

EXPLAIN SELECT * 
        FROM viagens.usuarios
        WHERE email = "ana.silva@email.com";

CREATE INDEX idx_email ON viagens.usuarios(email);

EXPLAIN SELECT * 
        FROM viagens.usuarios
        WHERE email = "ana.silva@email.com";

EXPLAIN SELECT *
		FROM viagens.usuarios
		WHERE nome = "Bruno Costa";

CREATE INDEX idx_nome ON viagens.usuarios(nome);

EXPLAIN SELECT *
		FROM viagens.usuarios
		WHERE nome = "Bruno Costa";

