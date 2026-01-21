-- tabela de coleções
CREATE TABLE IF NOT EXISTS tbl_collections (
    id SERIAL PRIMARY KEY,
    collection_set_name VARCHAR(100) NOT NULL,
    release_date DATE NOT NULL,
    total_cards_in_collection SMALLINT NOT NULL
);

COMMENT ON TABLE tbl_collections IS 'Tabela que guarda informações das coleções de cartas';
COMMENT ON COLUMN tbl_collections.collection_set_name IS 'Nome da coleção';
COMMENT ON COLUMN tbl_collections.release_date IS 'Data de lançamento da coleção';
COMMENT ON COLUMN tbl_collections.total_cards_in_collection IS 'Número total de cartas na coleção';

-- tabela de cartas
CREATE TABLE IF NOT EXISTS tbl_cards (
    id SERIAL PRIMARY KEY,
    hp SMALLINT,
    name VARCHAR(80) NOT NULL,
    type VARCHAR(30),
    stage VARCHAR(20),
    info TEXT,
    attack VARCHAR(100),
    damage VARCHAR(10),
    weak VARCHAR(30),
    resis VARCHAR(30),
    retreat VARCHAR(30),
    card_number_in_collection SMALLINT NOT NULL,
    collection_id INT NOT NULL,
    CONSTRAINT fk_collection
        FOREIGN KEY (collection_id) 
        REFERENCES tbl_collections (id)
        ON DELETE CASCADE
);

COMMENT ON TABLE tbl_cards IS 'Tabela que guarda informações detalhadas das cartas Pokémon TCG';
COMMENT ON COLUMN tbl_cards.hp IS 'Pontos de vida da carta';
COMMENT ON COLUMN tbl_cards.name IS 'Nome da carta';
COMMENT ON COLUMN tbl_cards.type IS 'Tipo da carta';
COMMENT ON COLUMN tbl_cards.stage IS 'Estágio da carta';
COMMENT ON COLUMN tbl_cards.info IS 'Descrição adicional';
COMMENT ON COLUMN tbl_cards.attack IS 'Nome do ataque';
COMMENT ON COLUMN tbl_cards.damage IS 'Valor de dano';
COMMENT ON COLUMN tbl_cards.weak IS 'Fraqueza';
COMMENT ON COLUMN tbl_cards.resis IS 'Resistência';
COMMENT ON COLUMN tbl_cards.retreat IS 'Custo de recuo';
COMMENT ON COLUMN tbl_cards.card_number_in_collection IS 'Número da carta na coleção';
COMMENT ON COLUMN tbl_cards.collection_id IS 'Chave estrangeira para coleção';

-- tabela de tipos
CREATE TABLE IF NOT EXISTS tbl_types (
    id SERIAL PRIMARY KEY,
    type_name VARCHAR(30) NOT NULL
);

COMMENT ON TABLE tbl_types IS 'Tabela que guarda os tipos de cartas (ex: Fogo, Água, Planta)';
COMMENT ON COLUMN tbl_types.type_name IS 'Nome do tipo da carta';

-- tabela de estágios
CREATE TABLE IF NOT EXISTS tbl_stages (
    id SERIAL PRIMARY KEY,
    stage_name VARCHAR(20) NOT NULL
);

COMMENT ON TABLE tbl_stages IS 'Tabela que guarda os estágios das cartas (ex: Básico, Estágio 1, Estágio 2)';
COMMENT ON COLUMN tbl_stages.stage_name IS 'Nome do estágio da carta';

-- ajustando a tabela de cartas para usar chaves estrangeiras
ALTER TABLE tbl_cards
    ADD COLUMN IF NOT EXISTS type_id INT,
    ADD COLUMN IF NOT EXISTS stage_id INT,
    ADD CONSTRAINT fk_type FOREIGN KEY (type_id) REFERENCES tbl_types (id) ON DELETE SET NULL,
    ADD CONSTRAINT fk_stage FOREIGN KEY (stage_id) REFERENCES tbl_stages (id) ON DELETE SET NULL;

COMMENT ON COLUMN tbl_cards.type_id IS 'Chave estrangeira que referencia o tipo da carta';
COMMENT ON COLUMN tbl_cards.stage_id IS 'Chave estrangeira que referencia o estágio da carta';
