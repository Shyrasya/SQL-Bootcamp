SELECT COALESCE(person.name, '-') AS person_name, visit_date, COALESCE(pizzeria.name, '-') AS pizzeria_name
FROM (SELECT *
        FROM person_visits
        WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS short_vis
FULL JOIN person ON person.id = short_vis.person_id
FULL JOIN pizzeria ON pizzeria.id = short_vis.pizzeria_id
ORDER BY person_name, visit_date, pizzeria_name
