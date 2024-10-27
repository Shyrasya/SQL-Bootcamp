WITH GEN(data) AS (SELECT generate_series(date '2022-01-01', date '2022-01-10', interval '1 day'))
SELECT GEN.data::date AS missing_date
FROM
    (SELECT DISTINCT visit_date
    FROM person_visits
    WHERE person_id = 1 OR person_id = 2) AS trash
RIGHT JOIN GEN ON trash.visit_date = GEN.data
WHERE trash.visit_date IS NULL
ORDER BY missing_date;