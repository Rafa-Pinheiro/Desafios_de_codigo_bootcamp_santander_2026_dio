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

INSERT INTO IF NOT EXISTS viagens.usuarios (nome, email, endereco, data_de_nascimento) VALUES 
("Ana Silva", "ana.silva@email.com", "Rua das Flores, 123", "1990-05-15"),
("Bruno Costa", "bruno.costa@email.com", "Avenida Paulista, 456", "1985-08-22"),
("Carla Mendes", "carla.mendes@email.com", "Travessa das Rosas, 789", "1992-12-03"),
("Daniel Oliveira", "daniel.oliveira@email.com", "Praça da Liberdade, 101", "1988-03-10"),
("Eduarda Ferreira", "eduarda.ferreira@email.com", "Alameda dos Anjos, 202", "1995-07-07"),
("Felipe Gomes", "felipe.gomes@email.com", "Rua das Palmeiras, 303", "1991-11-20"),
("Gabriela Rocha", "gabriela.rocha@email.com", "Praça das Flores, 404", "1993-09-18"),
("Hugo Santos", "hugo.santos@email.com", "Rua das Flores, 505", "1994-02-28"),
("Isabela Almeida", "isabela.almeida@email.com", "Rua das Flores, 606", "1992-04-12"),
("João Pereira", "joao.pereira@email.com", "Rua das Flores, 707", "1990-06-15"),
("Karina Souza", "karina.souza@email.com", "Rua das Flores, 808", "1993-01-25"),
("Lucas Ribeiro", "lucas.ribeiro@email.com", "Rua das Flores, 909", "1994-08-18"),
("Mariana Lima", "mariana.lima@email.com", "Rua das Flores, 1010", "1992-07-20"),
("Nicolas Fernandes", "nicolas.fernandes@email.com", "Rua das Flores, 1111", "1990-09-05"),
("Olivia Martins", "olivia.martins@email.com", "Rua das Flores, 1212", "1993-05-10"),
("Pedro Carvalho", "pedro.carvalho@email.com", "Rua das Flores, 1313", "1992-03-15"),
("Quintina Dias", "quintina.dias@email.com", "Rua das Flores, 1414", "1990-12-05"),
("Rafael Nunes", "rafael.nunes@email.com", "Rua das Flores, 1515", "1991-04-20"),
("Sofia Castro", "sofia.castro@email.com", "Rua das Flores, 1616", "1992-08-08");

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

