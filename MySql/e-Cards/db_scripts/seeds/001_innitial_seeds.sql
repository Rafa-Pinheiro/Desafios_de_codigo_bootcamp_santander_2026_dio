-- Coleções
INSERT INTO tbl_collections (collection_set_name, release_date, total_cards_in_collection)
VALUES
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62),
('Team Rocket', '2000-04-24', 83),
('Gym Heroes', '2000-08-14', 132);

-- Tipos
INSERT INTO tbl_types (type_name)
VALUES
('Fogo'),
('Água'),
('Planta'),
('Elétrico'),
('Psíquico'),
('Lutador'),
('Metálico'),
('Escuridão');

-- Estágios
INSERT INTO tbl_stages (stage_name)
VALUES
('Básico'),
('Estágio 1'),
('Estágio 2');

-- Cartas (exemplo: primeiros 10)
INSERT INTO tbl_cards (
    hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat,
    card_number_in_collection, collection_id
)
VALUES
(120, 'Charizard', 1, 3, 'Pokémon Fogo lendário', 'Fire Spin', '100', 'Água', 'Planta', 'CCC', 4, 1),
(60, 'Squirtle', 2, 1, 'Pokémon inicial de Água', 'Bubble', '10', 'Elétrico', NULL, 'C', 7, 1),
(50, 'Bulbasaur', 3, 1, 'Pokémon inicial de Planta', 'Leech Seed', '20', 'Fogo', NULL, 'C', 44, 1),
(40, 'Pikachu', 4, 1, 'Pokémon Elétrico famoso', 'Thunder Jolt', '30', 'Lutador', 'Metálico', 'C', 58, 1),
(100, 'Hitmonchan', 6, 1, 'Pokémon Lutador', 'Special Punch', '40', 'Psíquico', NULL, 'C', 7, 1),
(90, 'Machamp', 6, 3, 'Pokémon Lutador poderoso', 'Seismic Toss', '60', 'Psíquico', NULL, 'CCC', 8, 1),
(80, 'Gyarados', 2, 2, 'Pokémon Água dragão', 'Dragon Rage', '50', 'Elétrico', NULL, 'CCC', 6, 1),
(70, 'Alakazam', 5, 3, 'Pokémon Psíquico', 'Confuse Ray', '30', 'Psíquico', NULL, 'CC', 1, 1),
(60, 'Electabuzz', 4, 1, 'Pokémon Elétrico', 'Thunder Shock', '30', 'Lutador', NULL, 'C', 20, 1),
(50, 'Magmar', 1, 1, 'Pokémon Fogo', 'Smokescreen', '10', 'Água', NULL, 'C', 36, 1);
