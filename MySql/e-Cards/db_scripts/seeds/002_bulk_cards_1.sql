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
