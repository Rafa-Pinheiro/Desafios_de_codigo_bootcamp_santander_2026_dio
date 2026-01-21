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