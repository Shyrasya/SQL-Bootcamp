# Day03

Узнаем о языке DML и продолжаем тренироваться с JOIN 

## О заданиях

1. [Exercise 00](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day03/src/ex00) - выборка списка названий пицц, цен на них, названий пиццерий и дат посещения для Kate и для цен от 800 до 1000 рублей. Отсортировано по названию пиццы, цене, имени пиццерии;

2. [Exercise 01](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day03/src/ex01) - выборка с идентификаторами меню, которые никем не были заказаны. Отсортировано по возрастанию. Запрещены любые типы **"JOIN"**;

3. [Exercise 02](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day03/src/ex02) -
модифицированная выборка из Exercise 01, отображающая имена пицц из пиццерий, из которых никто ничего не заказал, включая соответствующие цены. Отсортировано по имени пиццы и цене;

4. [Exercise 03](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day03/src/ex03) - выборка с пиццериями, которые посещают больше всего женщины или мужчины. Дубликаты могут сохранятся в сеты с помощью конструкций: **"UNION ALL"**, **"EXCEPT ALL"**, **"INTERSECT ALL"**. Отсортировано по имени пиццерий;

5. [Exercise 04](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day03/src/ex04) - выборка c объединением пиццерий, в которых есть заказы либо от женщин, либо от мужчин. Другими словами, это набор названий пиццерий, которые заказывали только женщины. Затем применяется операция **"UNION"** с набором названий пиццерий, которые заказывали только мужчины. Все операторы SQL с множествами не хранят дубликаты (**"UNION ALL"**, **"EXCEPT ALL"**, **"INTERSECT ALL"**).

6. [Exercise 05](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day03/src/ex05) - выборка со списксом пиццерий, которые посетил Андрей, но не сделал заказ. Отсортировано по названию пиццерий;

7. [Exercise 06](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day03/src/ex06) - выборка с пиццами, которые имеют схожие имена и цены, но продающиеся в разных пиццериях. Результат отсортирован по названию пицц;

8. [Exercise 07](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day03/src/ex07) - в этом задании в таблицу добавляется новая пицца "greek pizza", id = 19, цена - 800 рублей, в пиццерию "Dominos", pizzeria_id = 2;

9. [Exercise 08](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day03/src/ex08) - добавляется новая пицца "sicilian pizza", расчитанная по формуле: "максимальное значение id + 1", цена пиццы 900 рублей в ресторан "Dominos", используется внутренний запрос для получения id пиццерии. Прямые номера для идентификаторов основого ключа и пиццерий не используются;

10. [Exercise 09](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day03/src/ex09) - добавляется новая запись визита в ресторан "Dominos" Денисом и Ириной 24 февраля 2022. Прямые номера для идентификаторов основого ключа и пиццерий не используются;

11. [Exercise 10](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day03/src/ex10) -
добавление новых заказов от Дениса и Ирины 24 февраля 2022 на пиццу "sicilian pizza". Прямые номера для идентификаторов основого ключа и пиццерий не используются;

12. [Exercise 11](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day03/src/ex11) -
изменение цены на "greek pizza" -10% от текущего значения;

13. [Exercise 12](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day03/src/ex12) - добавление новых заказов от всех людей на "greek pizza" за 25 февраля 2022. Используется шаблон "insert-select" (**"INSERT INTO ... SELECT ..."**). Не используются оконные функции типа **"ROW_NUMBER( )"**, атомарные операторы **"INSERT"**, прямые номера для идентификаторов первичных ключей и меню;

14. [Exercise 13](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day03/src/ex13) - 2 запроса SQL (DML), которые удаляют все новые заказы из Exercise 12 на основе даты заказа. Удалена "greek pizza" из меню.








