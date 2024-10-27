CREATE VIEW v_generated_dates AS
    SELECT gen.data::date AS generated_date
    FROM generate_series(date '2022-01-01', date '2022-01-31', interval '1 day') AS gen(data)
    ORDER BY generated_date;
