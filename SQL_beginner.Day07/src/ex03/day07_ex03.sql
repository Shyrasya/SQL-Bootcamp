SELECT name, sum(count) AS total_count
FROM ((SELECT piz.name AS name, count(*) AS count
    FROM person_visits pv
    JOIN pizzeria piz ON piz.id = pv.pizzeria_id
    GROUP BY piz.name
    ORDER BY count DESC)
    UNION
    (SELECT piz.name AS name, count(*) AS count
    FROM person_order po
    JOIN menu m ON m.id = po.menu_id
    JOIN pizzeria piz ON piz.id = m.pizzeria_id
    GROUP BY piz.name
    ORDER BY count DESC)) AS common
GROUP BY name
ORDER BY total_count DESC, name;

