# Day02

Продолжаем погружение в JOIN в SQL

## О заданиях

1. [Exercise 00](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day02/src/ex00) - выборка, возвращающая список пиццерий, которые не были посещены людьми, с соответствующим рейтингом. Запрещены **"NOT IN"**, **"IN"**, **"NOT EXISTS"**, **"EXISTS"**, **"UNION"**, **"EXCEPT"**, **"INTERSECT"**;

2. [Exercise 01](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day02/src/ex01) - выборка, которая возвращает данные о пропущенных днях с 1 по 10 января 2022 года (включительно) для посещений людей с идентификаторами 1 или 2 (т. е. дни, пропущенные обоими). Отсортировано по дням посещения по возрастанию. Необходимо использовать конструкцию "generate_series(...)". Запрещены **"NOT IN"**, **"IN"**, **"NOT EXISTS"**, **"EXISTS"**, **"UNION"**, **"EXCEPT"**, **"INTERSECT"**;

3. [Exercise 02](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day02/src/ex02) - выборка, возвращающая список имен людей посетивших (или не посетивших) пиццерии в период с 1 по 3 января 2022 года, с одной стороны, и весь список названий пиццерий, которые были посещены (или не посещены), с другой стороны. NULL-значения в столбцах "person_name", "pizzeria_name" были заменены на "-". Отсортировано по "person_name", "visit_date", "pizzeria_name" по возрастанию. Запрещены **"NOT IN"**, **"IN"**, **"NOT EXISTS"**, **"EXISTS"**, **"UNION"**, **"EXCEPT"**, **"INTERSECT"**;

4. [Exercise 03](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day02/src/ex03) - аналог Exercise 01, в котором используется шаблон CTE (Common Table Expression) для части генерации дней. Необходимо использовать конструкцию "generate_series(...)". Запрещены **"NOT IN"**, **"IN"**, **"NOT EXISTS"**, **"EXISTS"**, **"UNION"**, **"EXCEPT"**, **"INTERSECT"**;

5. [Exercise 04](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day02/src/ex04) - выборка с полной информацией обо всех возможных названиях пиццерий и ценах на пиццу с грибами или пепперони. Отсортиртировано по ""pizza_name"" и ""pizzeria_name"";

6. [Exercise 05](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day02/src/ex05) - выборка с именами девушек, чей возраст выше 25. Отсортировано по возрастанию;

7. [Exercise 06](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day02/src/ex06) - выборка со всеми любымыми пицццами (и соответствующими именами пиццерий), заказанными Денисом или Анной. Используется таблица "menu". Отсортированы оба столбца по возрастанию;

8. [Exercise 07](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day02/src/ex07) - 
выборка названий пиццерий, что посетил Дмитрий 8 января 2022 и смог съесть пиццу менее чем на 800 рублей;

9. [Exercise 08](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day02/src/ex08) - выборка с именами всех мужчин из Москвы или Самары, кто заказал пепперони или грибную пиццу (или обе). Отсортировано по именам по убыванию;

10. [Exercise 09](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day02/src/ex09) - выборка с именами женщин, кто заказал обе пиццы: пепперони и сырную (в любое время, в любых пиццериях). Отсортировано по именам по возрастанию;

11. [Exercise 10](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day02/src/ex10) - выборка с именами людей, кто живет в одном городе. Отсортировано по имени первого человека, второго человека и городу по возрастанию.










