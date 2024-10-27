SELECT p.name AS name, pizza_name, price, price * (100 - discount) / 100 AS discount_price, piz.name AS pizzeria_name
FROM person_order po
JOIN person p ON p.id = po.person_id
JOIN menu m ON m.id = po.menu_id
JOIN pizzeria piz ON m.pizzeria_id = piz.id
JOIN person_discounts pd ON po.person_id = pd.person_id AND pd.pizzeria_id = piz.id
ORDER BY p.name, pizza_name;
