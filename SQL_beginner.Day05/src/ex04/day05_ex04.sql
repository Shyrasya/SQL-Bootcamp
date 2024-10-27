SET enable_seqscan = OFF;

CREATE UNIQUE INDEX idx_menu_unique
ON menu (pizzeria_id, pizza_name);

EXPLAIN ANALYZE
SELECT price
FROM menu
WHERE pizza_name = 'mushroom pizza';

