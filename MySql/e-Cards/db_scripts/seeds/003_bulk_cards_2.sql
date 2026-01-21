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
