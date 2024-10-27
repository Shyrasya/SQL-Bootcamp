SELECT short_menu.pizza_name AS pizza_name, pizzeria.name AS pizzeria_name, short_menu.price
FROM (SELECT *
        FROM menu
        WHERE pizza_name = 'mushroom pizza' OR pizza_name = 'pepperoni pizza') AS short_menu
JOIN pizzeria ON short_menu.pizzeria_id = pizzeria.id
ORDER BY pizza_name, pizzeria_name