SELECT address,
       round(max(age::numeric) - (min(age::numeric) / max(age::numeric)), 2) AS formula,
       round(avg(age), 2) AS average,
        CASE
         WHEN (max(age::numeric) - (min(age::numeric) / max(age::numeric))) > round(avg(age::numeric), 2) THEN 'true'
         ELSE 'false'
        END AS comparasion
FROM person p
GROUP BY address
ORDER BY address;