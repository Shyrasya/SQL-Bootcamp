# Day06

Добавление новой таблицы с персональными скидами и работа с ней. Использование констрейнов, секвенций, комментариев, многоколоночного уникального индекса. В этом дне используется обновленная база данных, основанная на 7-13 заданиях 3 дня и 7 задании 4 дня, которая прикреплена в папке materials.

## О заданиях

1. [Exercise 00](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day06/src/ex00) - создание новой таблицы "person_discount" со следующими требованиями:
	* "id" - первичный ключ;
	* "person_id", "pizzeria_id" - внешние ключи для соответствующих таблиц (типы данных такие же, как для столбцов "id" в соответствующих родительских таблицах);
	* явные имена для констрейнов внешних ключей по шаблону: "fk_{table_name}_{column_name}";
	* новый атрибут - "discount" для хранения значения скидки в процентах (тип данных numeric для чисел с плавающей точкой);
	* разрешено использование SQL, DML, DDL;

2. [Exercise 01](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day06/src/ex01) - таблица "person_order", в которой хранится история заказов человека. Используется DML-оператор **"INSERT INTO ... SELECT ..."**, который вставляет новые записи в таблицу "person_discounts", основываясь на следующих правилах:
	* берется агрегированное состояние из столбцов "person_id" и "pizzeria_id";
	* рассчитывается значение персональной скидки с помощью следующего псевдокода:
		```
		if «amount of orders» = 1 then «discount» = 10.5 else if «amount of orders» = 2 then «discount» = 22 else «discount» = 30;
		```
	* для создания первичного ключюа для таблицы "person_discount" используется конструкция WINDOW FUNCTION : **"... ROW_NUMBER( ) OVER ( ) AS id ..."**;

3. [Exercise 02](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day06/src/ex02) - выборка с заказами с фактической ценой и ценой с учетом скидки для каждого человека в соответствующем ресторане-пиццерии, отсортированные по имени человека и названию пиццы;

4. [Exercise 03](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day06/src/ex03) - создание многоколоночного уникального индекса "idx_person_discounts_unique", который предотвращает дублирование пар идентификаторов человека и пиццерии. Команда **"EXPLAIN ANALYZE"** возвращает следующий образец:
"Index Scan using idx_person_discounts_unique on person_discounts";

5. [Exercise 04](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day06/src/ex04) - добавление правил констрейнов для существующих столбцов в таблице "person_discounts":
	* столбец "person_id" не должен быть NULL (ограничение "ch_nn_person_id");
	* столбец "pizzeria_id" не должен быть NULL (ограничение "ch_nn_pizzeria_id");
	* столбец "discount" не должен быть NULL (ограничение "ch_nn_discount");
	* cтолбец "discount" должен быть равен 0 процентов по умолчанию;
	* cтолбец "discount" должен быть в диапазоне значений от 0 до 100 (ограничение "ch_range_discount").

5. [Exercise 05](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day06/src/ex05) - добавление комментариев для таблицы "person_discount" и ее столбцов для соответствия политике управления данными;

6. [Exercise 06](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day06/src/ex06) - создание секвенции базы данных с именем "seq_person_discounts" (начиная со значения 1). Установка значения по умолчанию для атрибута "id" таблицы "person_discounts", чтобы каждый раз автоматически брать значение из "seq_person_discounts".Так как следующий номер последовательности равен 1, в этом случае задается фактическое значение последовательности базы данных по формуле: "количество строк в таблице "person_discounts"" + 1. В противном случае получаются ошибки о нарушении ограничения Primary Key. Не используются жестко заданное значение для количества рядов, чтобы установилось правильное значение для последовательности.
