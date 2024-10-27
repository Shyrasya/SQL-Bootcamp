SET enable_seqscan = OFF;

CREATE UNIQUE INDEX idx_person_discounts_unique
ON person_discounts (person_id, pizzeria_id);

EXPLAIN ANALYZE
SELECT person_id
FROM person_discounts pd
WHERE discount = 22 AND pizzeria_id = 6;
