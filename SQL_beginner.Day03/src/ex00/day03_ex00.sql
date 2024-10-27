SELECT m.pizza_name, m.price, piz.name AS pizzeria_name, po.visit_date
FROM person p
JOIN person_visits po ON p.id = po.person_id
JOIN pizzeria piz ON piz.id = po.pizzeria_id
JOIN menu m ON m.pizzeria_id = piz.id
WHERE p.name = 'Kate' AND m.price BETWEEN 800 AND 1000
ORDER BY m.pizza_name, m.price, piz.name
