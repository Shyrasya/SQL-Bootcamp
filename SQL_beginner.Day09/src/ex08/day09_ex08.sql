CREATE OR REPLACE FUNCTION fnc_fibonacci(pstop INTEGER DEFAULT 10)
RETURNS TABLE (fibonacci_numbers INTEGER) AS $$
DECLARE
  a integer := 0;
  b integer := 1;
  c integer;
BEGIN
    RETURN QUERY SELECT a;
    WHILE b < pstop LOOP
    RETURN QUERY SELECT b;
        c := a;
        a := b;
        b := a + c;
    END LOOP;
END;
$$ LANGUAGE plpgsql;

SELECT *
FROM fnc_fibonacci(100);

SELECT *
FROM fnc_fibonacci();