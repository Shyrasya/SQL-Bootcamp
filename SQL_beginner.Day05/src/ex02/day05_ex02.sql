CREATE INDEX idx_person_name
ON person (UPPER(name));

SET enable_seqscan = OFF;

EXPLAIN ANALYZE
SELECT name
FROM person p
WHERE UPPER(p.name) = 'PETER';