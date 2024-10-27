# Day01

Первые шаги по работе с множествами и JOIN в SQL

## О заданиях

1. [Exercise 00](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day01/src/ex00) - выборка, возвращающая идентификатор меню и названия пиццы из таблицы "menu", и идентификатор человека и его имя из таблицы "person" в один список (с именами столбцов "object_id" и "object_name"). Отсортировано по столбцам "object_id" и по "object_name";

2. [Exercise 01](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day01/src/ex01) - модификация выборки из Exercise 00. Удален стоблец "object_id_column". Отсортировано по "object_name" сначала для данных из таблицы "person", потом таблицы "menu". Дубликаты сохранены;

3. [Exercise 02](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day01/src/ex02) - выборка из уникальных имен пицц из таблицы "menu", отсортированные по "pizza_name" по убыванию. Запрещено использовать **""DISTINCT''**, **''GROUP BY``**, **""HAVING""**, любые типы **""JOIN""**;

4. [Exercise 03](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day01/src/ex03) - выборка, возвращающая общие строки для атрибутов "order_date", "person_id" из таблицы "person_orders" по одну сторону и "visit_date", "person_id" из таблицы "person_visits" по другую. Другими словами необходимо найти персональные идентификаторы людей, кто посетил и заказал пиццы в схожий день. Выборка отсортирована по "action_date" по возрастанию и по "person_id" по убыванию. Запрещены любые типы **""JOIN""**;

5. [Exercise 04](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day01/src/ex04) - выборка, возвращающая разницу (минус) значений столбца "person_id" при сохранении дубликатов между таблицей "person_order" и таблицей "person_visits" для дат "order_date" и "visit_date" за 7 января 2022 года. Запрещены любые типы **""JOIN""**;

6. [Exercise 05](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day01/src/ex05) - выборка, возвращающая все возможные комбинации между таблицами "person" и "pizzeria". Отсортировано по "person_identifier", "pizzeria identifier";

7. [Exercise 06](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day01/src/ex06) - модификация выборки из Exercise 03, позволяющая возвращать имена людей вместо идентификатора. Сортировка идет по "action_date" по возрастанию, "person_name" по убыванию;

8. [Exercise 07](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day01/src/ex07) - выборка, возвращающая "order_date" из таблицы "person_order" и соответствующее имя человека (имя (возраст - в скобочках)), сделавшего заказ из таблицы "person";

9. [Exercise 08](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day01/src/ex08) - переписанная выборка из Exercise 07, использующая **""NATURAL JOIN""**. Результат схож с Exercise 07. Запрещены любые типы **""JOIN""**;

10. [Exercise 09](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day01/src/ex09) - 2 выборки, возвращающие список пиццерий, которые никто не посетил. В первом случае используется **"IN"**, во втором **"EXISTS"**;

11. [Exercise 10](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day01/src/ex10) - выборка, возвращающая список имен людей, которые заказали пиццу из соответствующих пиццерий. Названия результирующих столбцов: "person_name", "pizza_name", "pizzeria_name". Отсортировано по "person_name", "pizza_name", "pizzeria_name" по возрастанию.








