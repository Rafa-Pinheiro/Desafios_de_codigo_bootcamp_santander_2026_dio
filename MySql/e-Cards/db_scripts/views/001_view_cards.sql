CREATE OR REPLACE VIEW vw_cards_detalhadas AS
SELECT 
    c.id,
    c.hp,
    c.name,
    c.info,
    c.attack,
    c.damage,
    c.weak,
    c.resis,
    c.retreat,
    c.card_number_in_collection,
    col.collection_set_name AS collection_name,
    col.release_date AS collection_release_date,
    col.total_cards_in_collection,
    t.type_name AS type_name,
    s.stage_name AS stage_name
FROM tbl_cards c
LEFT JOIN tbl_collections col ON c.collection_id = col.id
LEFT JOIN tbl_types t ON c.type_id = t.id
LEFT JOIN tbl_stages s ON c.stage_id = s.id;

COMMENT ON VIEW vw_cards_detalhadas IS 'View que agrega informações detalhadas das cartas, incluindo dados da coleção, tipo e estágio';

SELECT * FROM vw_cards_detalhadas;

