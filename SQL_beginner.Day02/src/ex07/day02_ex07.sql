SELECT piz_id_cheap.name
FROM (
    SELECT id, name
    FROM person
    WHERE name = 'Dmitriy') AS dim_id
JOIN
    (SELECT *
    FROM (SELECT *
        FROM person_visits
        WHERE visit_date = '2022-01-08') AS visit8
    JOIN
        (SELECT DISTINCT pizzeria_id
        FROM menu
        WHERE price < 800) AS piz_800_price
    ON piz_800_price.pizzeria_id = visit8.pizzeria_id
    JOIN pizzeria ON pizzeria.id = visit8.pizzeria_id
    ) AS piz_id_cheap
ON piz_id_cheap.person_id = dim_id.id


