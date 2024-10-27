SELECT ma.pizza_name AS pizza_name, ma.name AS pizzeria_name_1,
       mb.name AS pizzeria_name_2, ma.price AS price
FROM (SELECT *
    FROM menu
    JOIN pizzeria piz ON pizzeria_id = piz.id) AS ma
JOIN (SELECT *
    FROM menu
    JOIN pizzeria piz ON pizzeria_id = piz.id
    ) AS mb ON ma.price = mb.price AND ma.pizza_name = mb.pizza_name
    AND ma.pizzeria_id != mb.pizzeria_id AND ma.pizzeria_id > mb.pizzeria_id
ORDER BY pizza_name
