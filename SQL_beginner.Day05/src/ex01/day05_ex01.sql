SET enable_seqscan = OFF;

EXPLAIN ANALYZE
SELECT m.pizza_name AS pizza_name, piz.name AS pizzeria_name
FROM menu m
JOIN pizzeria piz ON piz.id = m.pizzeria_id;