# Day05

Изучаем индексы в SQL - это структуры данных, которые используются для ускорения поиска данных в базе данных. В этом дне используется обновленная база данных, основанная на 7-13 заданиях 3 дня, которая прикреплена в папке materials.

## О заданиях

1. [Exercise 00](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day05/src/ex00) - 
создание простого BTree индекса для каждого внешнего ключа в базе данных из materials. Шаблон имени соответствует следующему правилу «idx_{table_name}_{column_name}»;

2. [Exercise 01](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day05/src/ex01) - 
создание SQL-запроса, который возвращает название пицц и соответсвующее название пиццерии. Проверка работы индекса из Exercise 00 с помощью команды **"EXPLAIN ANALYZE"**. Вывод содержит строки "Index Scan using idx_menu_pizzeria_id on menu m  (...)";

3. [Exercise 02](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day05/src/ex02) - создание функционального BTree индекса "idx_person_name" на основе столбца из таблицы "person". Индекс содержит имена людей в верхнем регистре. Написан SQL-запрос для демонстрации работы индекса с помощью команды **"EXPLAIN ANALYZE"**;

4. [Exercise 03](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day05/src/ex03) - создание многоколоночного индекса BTree с именем "idx_person_order_multi" для SQL-запроса:
	```
	SELECT person_id, menu_id,order_date
	FROM person_order
	WHERE person_id = 8 AND menu_id = 19;
	```

	Команда **"EXPLAIN ANALYZE"** возвращает следующий образец:
	"Index Only Scan using idx_person_order_multi on person_order ...". Написан SQL-запрос для демонстрации работы индекса "idx_person_order_multi" с помощью команды **"EXPLAIN ANALYZE"**;

5. [Exercise 04](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day05/src/ex04) - создание уникального индекса BTree с именем "idx_menu_unique", основанного на таблице "menu" по столбцам "pizzeria_id", "pizza_name". Написан SQL-запрос для демонстрации работы индекса с помощью команды **"EXPLAIN ANALYZE"**;

6. [Exercise 05](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day05/src/ex05) - создание уникального индекса BTree с именем "idx_person_order_order_date", основанного на таблице "person_order" по столбцам "person_id", "menu_id" с частичной уникальностью для столбца "order_date" для даты 1 фнваря 2022. Команда **"EXPLAIN ANALYZE"** возвращает следующий образец:
"Index Only Scan using idx_person_order_order_date on person_order ...";

7. [Exercise 06](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day05/src/ex06) - создание уникального индекса BTree с именем "idx_1", который улучшает метрику "время выполнения" SQL-запроса:
	```
	SELECT
		m.pizza_name AS pizza_name,
		max(rating) OVER (PARTITION BY rating ORDER BY rating ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS k
	FROM  menu m
	INNER JOIN pizzeria pz ON m.pizzeria_id = pz.id
	ORDER BY 1,2;
	```
	Данное упражнение похоже на задачу «грубой силы» по поиску хорошего покрывающего индекса, поэтому перед новым тестом удаляется индекс "idx_1".
