SELECT DISTINCT name
FROM person p
JOIN person_order po ON po.person_id = p.id
JOIN menu m ON m.id = po.menu_id
WHERE p.gender = 'female' AND (pizza_name = 'pepperoni pizza' OR pizza_name = 'cheese pizza')
ORDER BY name