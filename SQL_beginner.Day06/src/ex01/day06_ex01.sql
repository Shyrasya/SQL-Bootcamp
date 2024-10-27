WITH order_count AS (
    SELECT po.person_id, m.pizzeria_id, COUNT(*)
    FROM person_order po
    JOIN menu m ON m.id = po.menu_id
    GROUP BY person_id, pizzeria_id
    ORDER BY person_id, pizzeria_id)

INSERT INTO person_discounts (id, person_id, pizzeria_id, discount)
SELECT ROW_NUMBER() OVER () AS id,
    person_id, pizzeria_id,
    CASE
        WHEN oc.count = 1 THEN 10.5
        WHEN oc.count = 2 THEN 22
        ELSE 30
        END AS discount
FROM order_count oc;
