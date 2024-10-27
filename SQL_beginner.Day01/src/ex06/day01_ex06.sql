SELECT order_date AS action_date, name
FROM person_order
JOIN person ON person_id = person.id
INTERSECT
SELECT visit_date AS action_date, name
FROM person_visits
JOIN person ON person_id = person.id
ORDER BY action_date, name DESC