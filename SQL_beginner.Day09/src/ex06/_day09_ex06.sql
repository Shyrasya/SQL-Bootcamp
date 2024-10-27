CREATE OR REPLACE FUNCTION fnc_person_visits_and_eats_on_date(
    pperson VARCHAR DEFAULT 'Dmitriy',
    pprice NUMERIC DEFAULT 500,
    pdate DATE DEFAULT '2022-01-08')
RETURNS TABLE (name VARCHAR) AS $$
BEGIN
    RETURN QUERY
    SELECT DISTINCT piz.name
    FROM person_visits pv
    JOIN person p ON p.id = pv.person_id
    JOIN pizzeria piz ON piz.id = pv.pizzeria_id
    JOIN menu m ON m.pizzeria_id = pv.pizzeria_id
    WHERE p.name = pperson AND m.price < pprice AND pv.visit_date = pdate
    ORDER BY piz.name;
END;
$$ LANGUAGE plpgsql;

SELECT *
FROM fnc_person_visits_and_eats_on_date(pprice := 800);

SELECT *
FROM fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');