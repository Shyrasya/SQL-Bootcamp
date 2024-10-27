SELECT pizza_name, menu_company.name AS pizzeria_name
FROM (
    SELECT person_id, menu_id
    FROM (SELECT id, name
          FROM person
          WHERE name = 'Denis' OR name = 'Anna') AS den_an
    JOIN person_order ON den_an.id = person_order.person_id) AS denan_menu
JOIN (SELECT menu.id, pizzeria_id, pizza_name, pizzeria.name
        FROM menu
        JOIN pizzeria ON menu.pizzeria_id = pizzeria.id) AS menu_company
    ON denan_menu.menu_id = menu_company.id
ORDER BY pizza_name, pizzeria_name
