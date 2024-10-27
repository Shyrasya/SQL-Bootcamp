SELECT view.name AS name
FROM (SELECT name
    FROM v_persons_female
    UNION
    SELECT name
    FROM v_persons_male) AS view
ORDER BY name;

