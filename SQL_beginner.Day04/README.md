# Day04

Практика использования виртуальных представлений и физических копий данных (снапшоты). В этом дне используется обновленная база данных, основанная на 7-13 заданиях 3 дня, которая прикреплена в папке materials.

## О заданиях

1. [Exercise 00](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day04/src/ex00) - создание двух представлений базы данных (с атрибутами, аналогичными исходной таблицы) на основе простой фильтрации по полу людей. Названия для представлений: "v_persons_female", "v_persons_male";

2. [Exercise 01](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day04/src/ex01) - 
создание выборки с помощью представлений базы данных из Exercise 00. Необходимо получить список имен мужчин и женщин, отсортированных по имени;

3. [Exercise 02](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day04/src/ex02) - создание представления базы данных с именем "v_generated_dates", которое хранит в себе сгенерированные с помощью "generate_series()" даты от 1 января 2022 до 31 января 2022 в формате "DATE". Отсортировано по столбцу "generates_date";

4. [Exercise 03](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day04/src/ex03) - выборка, возвращающая список пропущенных дней, в которые люди не посещали пиццерии в январе 2022. Используется представление "v_generated_dates", итоговый список отсортирован по "missing_date";

5. [Exercise 04](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day04/src/ex04) - выборка, удовлетворяющая формуле "(R - S)U(S - R)", где R - таблица "person_visits", отфильтроавнная по 2 января 2022. S - также таблица "person_visits", но с фильтром по 6 января 2022. Расчеты производятся по столбцу "person_id", который будет единственным в результате и по которому будет производится сортировка. Итоговый результат представлен в представлении "v_symmetric_union";

6. [Exercise 05](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day04/src/ex05) - создание представления "v_price_with_discount", в котором находятся заказы людей, их имена, названия пиццы, стоимость пиццы и столбец "discount_price", расчитанный по формуле: "price - price * 0.1". Сортировка прозведена по имени людей, названию пиццы, цене по скидке (тип данных integer);

7. [Exercise 06](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day04/src/ex06) - создание материализованного представления "mv_dmitriy_visits_and_eats" (с влюченными данными). Выборка происходит по названиям пиццерий, которые Дмитрий посетил 8 января 2022 и мог съесть пиццу менее чем за 800 рублей (данный запрос был оформлен в [Day02 Exercise 07](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day02/src/ex07));

8. [Exercise 07](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day04/src/ex07) - обновление данных в материализованном представлении "mv_dmitriy_visits_and_eats" из Exercise 06. Было создано еще одно посещение Дмитрием, удовлетворяющее SQL-запросу материализованного представления, за исключением пиццерии - результата из Exercise 06. После добавления нового визита состояние данных для "mv_dmitriy_visits_and_eats" было обновлено. Не использовались прямые номера для идентификаторов первичного ключа, человека и пиццерии;

9. [Exercise 08](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day04/src/ex08) - удаление всех созданных в этом дне виртуальных таблиц и материализованных представлений.

