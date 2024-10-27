WITH domino_sic AS (SELECT menu.id AS menuid
            FROM menu
            JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
            WHERE pizza_name = 'sicilian pizza' AND pizzeria.name = 'Dominos')

INSERT INTO person_order (id, person_id, menu_id, order_date)
VALUES
    ((SELECT MAX(id) + 1 FROM person_order),
    (SELECT id FROM person WHERE name = 'Denis'),
    (SELECT menuid FROM domino_sic),
     '2022-02-24'),
    ((SELECT MAX(id) + 2 FROM person_order),
    (SELECT id FROM person WHERE name = 'Irina'),
    (SELECT menuid FROM domino_sic),
     '2022-02-24');
