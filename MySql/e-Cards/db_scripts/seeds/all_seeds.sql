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
-- Inserindo mais 20 cartas diferentes
INSERT INTO tbl_cards (
    hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat,
    card_number_in_collection, collection_id
)
VALUES
(70, 'Jigglypuff', 5, 1, 'Pokémon fofo que canta', 'Sing', '0', 'Lutador', NULL, 'C', 20, 2),
(90, 'Snorlax', 3, 1, 'Pokémon preguiçoso gigante', 'Body Slam', '30', 'Lutador', NULL, 'CC', 11, 2),
(60, 'Eevee', 3, 1, 'Pokémon que evolui em várias formas', 'Quick Attack', '20', 'Lutador', NULL, 'C', 51, 2),
(80, 'Scyther', 3, 1, 'Pokémon inseto cortante', 'Slash', '30', 'Fogo', NULL, 'CC', 10, 2),
(100, 'Kangaskhan', 3, 1, 'Pokémon que protege seu filhote', 'Comet Punch', '40', 'Lutador', NULL, 'CCC', 5, 2),
(60, 'Lapras', 2, 1, 'Pokémon aquático que transporta pessoas', 'Water Gun', '30', 'Elétrico', NULL, 'CC', 10, 3),
(70, 'Kabuto', 3, 1, 'Pokémon fóssil', 'Scratch', '20', 'Planta', NULL, 'C', 9, 3),
(80, 'Aerodactyl', 6, 1, 'Pokémon fóssil voador', 'Wing Attack', '30', 'Elétrico', NULL, 'CC', 1, 3),
(60, 'Moltres', 1, 1, 'Pokémon lendário de fogo', 'Dive Bomb', '50', 'Água', NULL, 'CCC', 12, 3),
(70, 'Zapdos', 4, 1, 'Pokémon lendário elétrico', 'Thunderstorm', '40', 'Lutador', NULL, 'CCC', 15, 3),
(80, 'Dark Charmeleon', 1, 2, 'Versão Team Rocket do Charmeleon', 'Fireball', '50', 'Água', NULL, 'CC', 32, 4),
(60, 'Dark Jolteon', 4, 2, 'Versão Team Rocket do Jolteon', 'Lightning Flash', '30', 'Lutador', NULL, 'C', 38, 4),
(70, 'Dark Kadabra', 5, 2, 'Versão Team Rocket do Kadabra', 'Mind Shock', '40', 'Psíquico', NULL, 'CC', 45, 4),
(90, 'Dark Machoke', 6, 2, 'Versão Team Rocket do Machoke', 'Mega Punch', '50', 'Psíquico', NULL, 'CCC', 52, 4),
(100, 'Dark Dragonair', 2, 2, 'Versão Team Rocket do Dragonair', 'Tail Strike', '60', 'Elétrico', NULL, 'CCC', 18, 4),
(70, 'Erika''s Bulbasaur', 3, 1, 'Carta temática da líder de ginásio Erika', 'Growth', '20', 'Fogo', NULL, 'C', 46, 5),
(80, 'Misty''s Starmie', 2, 2, 'Carta temática da líder Misty', 'Star Freeze', '30', 'Elétrico', NULL, 'CC', 56, 5),
(60, 'Brock''s Geodude', 6, 1, 'Carta temática do líder Brock', 'Rock Throw', '20', 'Planta', NULL, 'C', 12, 5),
(90, 'Lt. Surge''s Electabuzz', 4, 1, 'Carta temática do líder Surge', 'Electric Current', '40', 'Lutador', NULL, 'CC', 20, 5),
(100, 'Sabrina''s Alakazam', 5, 3, 'Carta temática da líder Sabrina', 'Psychic', '60', 'Psíquico', NULL, 'CCC', 16, 5);
-- Inserindo mais 30 cartas diferentes
INSERT INTO tbl_cards (
    hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat,
    card_number_in_collection, collection_id
)
VALUES
-- Base Set (id=1)
(60, 'Nidoran♀', 3, 1, 'Pokémon planta venenoso', 'Scratch', '10', 'Psíquico', NULL, 'C', 32, 1),
(70, 'Nidorino', 3, 2, 'Evolução de Nidoran♀', 'Horn Attack', '20', 'Psíquico', NULL, 'CC', 33, 1),
(80, 'Venusaur', 3, 3, 'Evolução final de Bulbasaur', 'Solarbeam', '60', 'Fogo', NULL, 'CCC', 15, 1),
(50, 'Charmander', 1, 1, 'Pokémon inicial de fogo', 'Ember', '30', 'Água', NULL, 'C', 46, 1),
(70, 'Charmeleon', 1, 2, 'Evolução de Charmander', 'Flamethrower', '50', 'Água', NULL, 'CC', 24, 1),
(90, 'Blastoise', 2, 3, 'Evolução final de Squirtle', 'Hydro Pump', '60', 'Elétrico', NULL, 'CCC', 2, 1),

-- Jungle (id=2)
(60, 'Oddish', 3, 1, 'Pokémon planta', 'Absorb', '10', 'Fogo', NULL, 'C', 58, 2),
(70, 'Gloom', 3, 2, 'Evolução de Oddish', 'Poisonpowder', '20', 'Fogo', NULL, 'CC', 36, 2),
(90, 'Vileplume', 3, 3, 'Evolução final de Oddish', 'Petal Dance', '40', 'Fogo', NULL, 'CCC', 13, 2),
(60, 'Meowth', 6, 1, 'Pokémon gato', 'Pay Day', '20', 'Lutador', NULL, 'C', 56, 2),
(80, 'Persian', 6, 2, 'Evolução de Meowth', 'Scratch', '30', 'Lutador', NULL, 'CC', 42, 2),
(100, 'Clefable', 5, 2, 'Evolução de Clefairy', 'Metronome', '40', 'Lutador', NULL, 'CCC', 17, 2),

-- Fossil (id=3)
(60, 'Omanyte', 2, 1, 'Pokémon fóssil aquático', 'Water Gun', '20', 'Planta', NULL, 'C', 52, 3),
(80, 'Omastar', 2, 2, 'Evolução de Omanyte', 'Spike Cannon', '30', 'Planta', NULL, 'CC', 23, 3),
(70, 'Kabutops', 6, 2, 'Evolução de Kabuto', 'Slash', '40', 'Planta', NULL, 'CC', 24, 3),
(90, 'Articuno', 2, 1, 'Pokémon lendário de gelo', 'Freeze Dry', '50', 'Elétrico', NULL, 'CCC', 2, 3),
(100, 'Dragonite', 2, 3, 'Pokémon dragão raro', 'Hyper Beam', '60', 'Elétrico', NULL, 'CCC', 4, 3),
(80, 'Ditto', 5, 1, 'Pokémon que copia outros', 'Transform', '0', 'Lutador', NULL, 'C', 18, 3),

-- Team Rocket (id=4)
(60, 'Dark Raticate', 6, 2, 'Versão Team Rocket de Raticate', 'Hyper Fang', '30', 'Lutador', NULL, 'C', 47, 4),
(70, 'Dark Golbat', 3, 2, 'Versão Team Rocket de Golbat', 'Sneak Attack', '20', 'Psíquico', NULL, 'CC', 33, 4),
(90, 'Dark Arbok', 3, 2, 'Versão Team Rocket de Arbok', 'Poison Vapor', '40', 'Psíquico', NULL, 'CCC', 19, 4),
(100, 'Dark Blastoise', 2, 3, 'Versão Team Rocket de Blastoise', 'Hydro Cannon', '60', 'Elétrico', NULL, 'CCC', 3, 4),
(80, 'Dark Gyarados', 2, 2, 'Versão Team Rocket de Gyarados', 'Dragon Rage', '50', 'Elétrico', NULL, 'CCC', 8, 4),
(70, 'Dark Hypno', 5, 2, 'Versão Team Rocket de Hypno', 'Nightmare', '30', 'Psíquico', NULL, 'CC', 26, 4),

-- Gym Heroes (id=5)
(60, 'Erika''s Oddish', 3, 1, 'Carta temática da líder Erika', 'Absorb', '10', 'Fogo', NULL, 'C', 58, 5),
(70, 'Misty''s Horsea', 2, 1, 'Carta temática da líder Misty', 'Smokescreen', '20', 'Elétrico', NULL, 'C', 12, 5),
(80, 'Brock''s Onix', 6, 1, 'Carta temática do líder Brock', 'Rock Throw', '30', 'Planta', NULL, 'CC', 21, 5),
(90, 'Lt. Surge''s Raichu', 4, 2, 'Carta temática do líder Surge', 'Thunderbolt', '50', 'Lutador', NULL, 'CCC', 14, 5),
(100, 'Sabrina''s Gengar', 5, 3, 'Carta temática da líder Sabrina', 'Dark Mind', '60', 'Psíquico', NULL, 'CCC', 7, 5),
(80, 'Erika''s Clefairy', 5, 1, 'Carta temática da líder Erika', 'Moonlight', '20', 'Lutador', NULL, 'C', 33, 5);
INSERT INTO tbl_cards (
    hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat,
    card_number_in_collection, collection_id
)
VALUES
-- Base Set (id=1)
(40, 'Pidgey', 6, 1, 'Pokémon pássaro comum', 'Gust', '10', 'Elétrico', NULL, 'C', 57, 1),
(60, 'Pidgeotto', 6, 2, 'Evolução de Pidgey', 'Whirlwind', '20', 'Elétrico', NULL, 'CC', 17, 1),
(80, 'Pidgeot', 6, 3, 'Evolução final de Pidgey', 'Hurricane', '60', 'Elétrico', NULL, 'CCC', 8, 1),
(50, 'Rattata', 6, 1, 'Pokémon rato rápido', 'Bite', '20', 'Lutador', NULL, 'C', 61, 1),
(70, 'Raticate', 6, 2, 'Evolução de Rattata', 'Super Fang', '30', 'Lutador', NULL, 'CC', 20, 1),
(90, 'Arcanine', 1, 2, 'Pokémon cão de fogo', 'Flamethrower', '50', 'Água', NULL, 'CCC', 23, 1),
(60, 'Poliwag', 2, 1, 'Pokémon aquático', 'Water Gun', '20', 'Elétrico', NULL, 'C', 59, 1),
(70, 'Poliwhirl', 2, 2, 'Evolução de Poliwag', 'Bubble', '30', 'Elétrico', NULL, 'CC', 30, 1),
(90, 'Poliwrath', 2, 3, 'Evolução final de Poliwag', 'Submission', '60', 'Elétrico', NULL, 'CCC', 13, 1),
(100, 'Chansey', 5, 1, 'Pokémon que carrega ovo', 'Double-Edge', '80', 'Lutador', NULL, 'CCC', 3, 1),

-- Jungle (id=2)
(50, 'Paras', 3, 1, 'Pokémon inseto planta', 'Scratch', '20', 'Fogo', NULL, 'C', 55, 2),
(70, 'Parasect', 3, 2, 'Evolução de Paras', 'Spore', '30', 'Fogo', NULL, 'CC', 24, 2),
(60, 'Doduo', 6, 1, 'Pokémon pássaro de duas cabeças', 'Peck', '20', 'Elétrico', NULL, 'C', 48, 2),
(80, 'Dodrio', 6, 2, 'Evolução de Doduo', 'Rage', '30', 'Elétrico', NULL, 'CC', 34, 2),
(100, 'Tauros', 6, 1, 'Pokémon touro selvagem', 'Rampage', '40', 'Lutador', NULL, 'CCC', 21, 2),
(60, 'Cubone', 6, 1, 'Pokémon com osso', 'Bone Club', '20', 'Planta', NULL, 'C', 50, 2),
(80, 'Marowak', 6, 2, 'Evolução de Cubone', 'Bonemerang', '30', 'Planta', NULL, 'CC', 39, 2),
(90, 'Wigglytuff', 5, 2, 'Evolução de Jigglypuff', 'Do the Wave', '40', 'Lutador', NULL, 'CCC', 32, 2),
(70, 'Pinsir', 3, 1, 'Pokémon inseto poderoso', 'Guillotine', '50', 'Fogo', NULL, 'CC', 6, 2),
(100, 'Electrode', 4, 1, 'Pokémon elétrico explosivo', 'Explosion', '80', 'Lutador', NULL, 'CCC', 18, 2),

-- Fossil (id=3)
(50, 'Grimer', 3, 1, 'Pokémon de lodo', 'Poison Gas', '10', 'Psíquico', NULL, 'C', 57, 3),
(70, 'Muk', 3, 2, 'Evolução de Grimer', 'Sludge', '30', 'Psíquico', NULL, 'CC', 13, 3),
(60, 'Zubat', 3, 1, 'Pokémon morcego', 'Leech Life', '20', 'Psíquico', NULL, 'C', 60, 3),
(80, 'Golbat', 3, 2, 'Evolução de Zubat', 'Wing Attack', '30', 'Psíquico', NULL, 'CC', 25, 3),
(100, 'Haunter', 5, 2, 'Evolução de Gastly', 'Nightmare', '40', 'Psíquico', NULL, 'CCC', 6, 3),
(90, 'Hypno', 5, 2, 'Pokémon psíquico hipnótico', 'Prophecy', '30', 'Psíquico', NULL, 'CC', 8, 3),
(70, 'Magneton', 4, 2, 'Pokémon elétrico magnético', 'Thunder Wave', '40', 'Lutador', NULL, 'CCC', 9, 3),
(60, 'Seel', 2, 1, 'Pokémon aquático', 'Headbutt', '20', 'Elétrico', NULL, 'C', 58, 3),
(80, 'Dewgong', 2, 2, 'Evolução de Seel', 'Aurora Beam', '30', 'Elétrico', NULL, 'CC', 17, 3),
(100, 'Lapras Fossil', 2, 1, 'Versão Fossil de Lapras', 'Water Gun', '40', 'Elétrico', NULL, 'CCC', 10, 3),

-- Team Rocket (id=4)
(60, 'Dark Vulpix', 1, 1, 'Versão Team Rocket de Vulpix', 'Ember', '20', 'Água', NULL, 'C', 49, 4),
(80, 'Dark Ninetales', 1, 2, 'Versão Team Rocket de Ninetales', 'Fire Blast', '50', 'Água', NULL, 'CC', 22, 4),
(70, 'Dark Growlithe', 1, 1, 'Versão Team Rocket de Growlithe', 'Flame Tail', '30', 'Água', NULL, 'C', 31, 4),
(90, 'Dark Arcanine', 1, 2, 'Versão Team Rocket de Arcanine', 'Flamethrower', '60', 'Água', NULL, 'CCC', 12, 4),
(100, 'Dark Magneton', 4, 2, 'Versão Team Rocket de Magneton', 'Sonicboom', '40', 'Lutador', NULL, 'CCC', 27, 4),
(80, 'Dark Muk', 3, 2, 'Versão Team Rocket de Muk', 'Poison Sludge', '30', 'Psíquico', NULL, 'CC', 14, 4),
(70, 'Dark Weezing', 3, 2, 'Versão Team Rocket de Weezing', 'Smog', '30', 'Psíquico', NULL, 'CC', 28, 4),
(60, 'Dark Golduck', 2, 2, 'Versão Team Rocket de Golduck', 'Psyduck Wave', '40', 'Elétrico', NULL, 'CC', 35, 4),
(90, 'Dark Slowbro', 2, 2, 'Versão Team Rocket de Slowbro', 'Headbutt', '50', 'Elétrico', NULL, 'CCC', 36, 4),
(100, 'Dark Machamp', 6, 3, 'Versão Team Rocket de Machamp', 'Seismic Toss', '60', 'Psíquico', NULL, 'CCC', 7, 4);
