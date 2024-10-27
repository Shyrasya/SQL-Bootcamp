SELECT m.pizza_name, m.price, piz.name AS pizzeria_name
FROM (
    SELECT m.id AS menu_id
    FROM menu m
    EXCEPT
    SELECT po.menu_id
    FROM person_order po) AS mid
JOIN menu m ON m.id = mid.menu_id
JOIN pizzeria piz ON piz.id = m.pizzeria_id
ORDER BY m.pizza_name, m.price


