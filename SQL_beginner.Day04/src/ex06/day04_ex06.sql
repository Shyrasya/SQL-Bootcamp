CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
SELECT piz.name
FROM person_visits pv
JOIN person p ON p.id = pv.person_id
JOIN pizzeria piz ON piz.id = pv.pizzeria_id
JOIN menu m ON m.pizzeria_id = piz.id
WHERE p.name = 'Dmitriy' AND m.price < 800 AND pv.visit_date = '2022-01-08'

