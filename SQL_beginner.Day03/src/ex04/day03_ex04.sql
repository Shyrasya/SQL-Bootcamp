WITH po_woman AS (SELECT piz.name AS pizzeria_name
FROM person_order po
JOIN person p ON po.person_id = p.id
JOIN menu m ON m.id = po.menu_id
JOIN pizzeria piz ON piz.id = m.pizzeria_id
WHERE gender = 'female'),

po_man AS (SELECT piz.name AS pizzeria_name
FROM person_order po
JOIN person p ON po.person_id = p.id
JOIN menu m ON m.id = po.menu_id
JOIN pizzeria piz ON piz.id = m.pizzeria_id
WHERE gender = 'male')

SELECT woman_fin.pizzeria_name
FROM(
    SELECT pizzeria_name
    FROM po_woman
    EXCEPT
    SELECT pizzeria_name
    FROM po_man) AS woman_fin
UNION
SELECT man_fin.pizzeria_name
FROM(
    SELECT pizzeria_name
    FROM po_man
    EXCEPT
    SELECT pizzeria_name
    FROM po_woman) AS man_fin
ORDER BY pizzeria_name

