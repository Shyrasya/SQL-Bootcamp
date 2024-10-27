INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT  generate_series(max(po.id) + min(p.id), max(po.id) + max(p.id)) AS id,
        generate_series(min(p.id), max(p.id)) AS person_id,
       (SELECT m.id
        FROM menu m
        WHERE m.pizza_name = 'greek pizza'
        EXCEPT
        SELECT po.menu_id
        FROM person_order po) AS menu_id,
       '2022-02-25' AS order_date
FROM person p, person_order po;