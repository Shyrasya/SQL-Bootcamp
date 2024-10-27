COMMENT ON TABLE person_discounts IS 'В этой таблице содержится информация о скидках для людей в разных пиццериях';
COMMENT ON COLUMN person_discounts.id IS 'Идентификатор скидки';
COMMENT ON COLUMN person_discounts.person_id IS 'Идентификатор человека, который получил скидку';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Идентификатор пиццерии, где применима скидка';
COMMENT ON COLUMN person_discounts.discount IS 'Значение скидки в процентах';
