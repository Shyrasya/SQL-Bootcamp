# Day09

Настройка триггеров для аудита изменений в таблице, создание общей функции фильтрации, специализированных SQL-функций и функций для нахождения минимального значения, а также таблицы чисел Фибоначчи. В этом дне используется обновленная база данных, основанная на 7-13 заданиях 3 дня и 7 задании 4 дня, которая прикреплена в папке materials. 

## О заданиях

1. [Exercise 00](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day09/src/ex00) Создание таблицы "person_audit" со схожей структурой как в таблице "person", но с некоторыми изменениями. Написание триггерной функции базы данных "fnc_trg_person_insert_audit", которая должна обрабатывать DML-трафик **"INSERT"** и создавать копию новой строки в таблице "person_audit". Определение триггера базы данных "trg_person_insert_audit" со следующими параметрами:
	* триггер с опцией **"FOR EACH ROW"**;
	* триггер с опцией **"AFTER INSERT"**;
	*	триггер вызывает триггерную функцию "fnc_trg_person_insert_audit";
Далее выполняется оператор **"INSERT"** в таблице "person":
```INSERT INTO person(id, name, age, gender, address) VALUES (10,'Damir', 22, 'male', 'Irkutsk')```;

2. [Exercise 01](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day09/src/ex01) Определение триггера "trg_person_update_audit" и соответствующей триггерной функции "fnc_trg_person_update_audit" для обработки всего трафика **"UPDATE"** в таблице "person". Сохраняются OLD-состояния всех значений атрибутов.
Затем выполняется утверждение:
```UPDATE person SET name = 'Bulat' WHERE id = 10; UPDATE person SET name = 'Damir' WHERE id = 10```;

3. [Exercise 02](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day09/src/ex02) Определим **"DELETE"** и сделаем копию старых состояний для всех значений атрибутов. Создадим триггер "trg_person_delete_audit" и соответствующую триггерную функцию "fnc_trg_person_delete_audit". Выполним утверждение:
```DELETE FROM person WHERE id = 10```;

4. [Exercise 03](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day09/src/ex03) Для одной таблицы "person" в данный момент существует 3 триггера. Произведем объединение всей логики в один главный триггер "trg_person_audit" и новую соответствующую триггерную функцию "fnc_trg_person_audit" (DML-трафик (**"INSERT"**, **"UPDATE"**, **"DELETE"**) обрабатывается одним функциональным блоком). Сделано определение в отдельный блок **"IF-ELSE"** для каждого события (I, U, D). Выполнены следующие действия:
	* удалены 3 старых триггера из таблицы "person";
	* удалены 3 старых триггерные функции;
	* выполнен **"TRUNCATE"**  всех строк в таблице "person_audit".
Повторно применен набор операторов DML:
```INSERT INTO person(id, name, age, gender, address) VALUES (10,'Damir', 22, 'male', 'Irkutsk'); UPDATE person SET name = 'Bulat' WHERE id = 10; UPDATE person SET name = 'Damir' WHERE id = 10; DELETE FROM person WHERE id = 10```;

5. [Exercise 04](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day09/src/ex04) Определены две SQL-функции с именами: "fnc_persons_female" (возвращает лица женского пола) и "fnc_persons_male" (возвращает лица мужского пола). Для проверки используется утверждение:
	```
	SELECT *
	FROM fnc_persons_male();

	SELECT *
	FROM fnc_persons_female();
	```

6. [Exercise 05](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day09/src/ex05) Удалены 2 функции из Exercise 04 из базы данных. Написаны общие SQL-функции "fnc_persons". Функция имеет **"IN"** параметр "pgender" со значением по умолчанию = 'female'.
Для проверки используется утверждение:
	``` 
	SELECT *
	FROM fnc_persons(pgender := 'male');

	SELECT *
	FROM fnc_persons();
	```

7. [Exercise 06](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day09/src/ex06) Создадим pl/pgsql-функцию "fnc_person_visits_and_eats_on_date" на основе SQL-оператора, которая будет находить названия пиццерий, которые посетил человек (**"IN"** "pperson" параметр со значением по умолчанию "Dmitriy") и где он мог купить пиццу дешевле заданной суммы в рублях (**"IN"** "pprice" параметр со значением по умолчанию 500) в заданную дату (**"IN"** "pdate" параметр со значением по умолчанию 8 января 2022 года). Для проверки используется утверждение:
	``` 
	SELECT *
	FROM fnc_person_visits_and_eats_on_date(pprice := 800);

	SELECT *
	FROM fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');
	```

8. [Exercise 07](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day09/src/ex07) Создание функции "func_minimum" на SQL или pl/pgsql, входным параметром которой является массив чисел, а функция должна возвращать минимальное значение. Для проверки используется утверждение:
	```
	SELECT func_minimum(VARIADIC arr => ARRAY[10.0, -1.0, 5.0, 4.4]);
	```

9. [Exercise 08](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day09/src/ex08) Создание функции "fnc_fibonacci" на SQL или pl/pgsql, которая имеет входной параметр "pstop" типа integer (по умолчанию 10), а выходным параметром функции является таблица всех чисел Фибоначчи меньше "pstop". Для проверки используется утверждение:
	```
	SELECT * from fnc_fibonacci(100);
	SELECT * from fnc_fibonacci();
	```