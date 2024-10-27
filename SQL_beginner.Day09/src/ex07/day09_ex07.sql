CREATE OR REPLACE FUNCTION func_minimum(arr NUMERIC[])
RETURNS NUMERIC AS $$
BEGIN
  RETURN (SELECT min(minimum) FROM unnest(arr) AS minimum);
END;
$$ LANGUAGE plpgsql;

SELECT func_minimum(VARIADIC arr => ARRAY[10.0, -1.0, 5.0, 4.4]);