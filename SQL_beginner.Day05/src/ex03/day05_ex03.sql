SET enable_seqscan = OFF;

CREATE INDEX idx_person_order_multi
ON person_order (person_id, menu_id, order_date);

EXPLAIN ANALYZE
SELECT person_id, menu_id, order_date
FROM person_order
WHERE person_id = 8 AND menu_id = 19;

EXPLAIN ANALYZE
SELECT order_date
FROM person_order
WHERE order_date = '2022-01-09';
