SELECT object_name
FROM (
    SELECT name AS object_name, 'person' AS title
    FROM person
    UNION ALL
    SELECT pizza_name, 'menu'
    FROM menu) AS dump
ORDER BY title DESC, object_name