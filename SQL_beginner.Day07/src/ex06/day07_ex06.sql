SELECT piz.name, count(*) AS count_of_orders, round(avg(price), 2) AS average_price,
       max(price) AS max_price, min(price) AS min_price
FROM person_order po
JOIN menu m ON m.id = po.menu_id
JOIN pizzeria piz ON piz.id = m.pizzeria_id
GROUP BY piz.name
ORDER BY name;
