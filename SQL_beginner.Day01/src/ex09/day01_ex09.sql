SELECT name
FROM pizzeria
EXCEPT
SELECT name
FROM pizzeria
WHERE id IN (SELECT pizzeria_id FROM person_visits);

SELECT name
FROM pizzeria
WHERE NOT EXISTS (SELECT pizzeria_id FROM person_visits WHERE pizzeria_id = pizzeria.id);