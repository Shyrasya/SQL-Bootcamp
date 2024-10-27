SELECT main.pizzeria_name AS pizzeria_name
FROM (
    SELECT piz.name AS pizzeria_name, COUNT(*) AS count
    FROM person_visits pv
    JOIN pizzeria piz ON piz.id = pv.pizzeria_id
    JOIN person p ON p.id = pv.person_id
    WHERE gender = 'female'
    GROUP BY piz.name
    EXCEPT ALL
    SELECT piz.name AS pizzeria_name, COUNT(*) AS count
    FROM person_visits pv
    JOIN pizzeria piz ON piz.id = pv.pizzeria_id
    JOIN person p ON p.id = pv.person_id
    WHERE gender = 'male'
    GROUP BY piz.name) AS main
ORDER BY pizzeria_name