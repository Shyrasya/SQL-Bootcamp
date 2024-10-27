# Day00

Первые шаги в мире SQL

## О заданиях

1. [Exercise 00](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day00/src/ex00) - выборка имен, возрастов людей, кто живет в Казани;

2. [Exercise 01](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day00/src/ex01) - выборка имен, возрастов всех женщин из Казани, отсортированных по имени;

3. [Exercise 02](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day00/src/ex02) - две выборки, возвращающие список пиццерий (название и рейтинг), с диапазоном рейтинга 3,5-5 (включительно), отсортированных по рейтингу. 1 выборка содержит знаки сравнения, 2 - содержит ключевое слово **"BETWEEN"**;

4. [Exercise 03](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day00/src/ex03) - выборка, возвращающая персональный идентификатор (без дупликатов) людей, которые посетили пиццерию в период с 6 января по 9 января (включительно) или посетили пиццерию с персональным идентификатором 2. Отсортировано по убыванию по персональному идентификатору;

5. [Exercise 04](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day00/src/ex04) - выборка со столбцом "person_information", которая содержит всю доступную информацию по каждому человеку в строчном виде: ***Anna (age:16,gender:'female',address:'Moscow')***;

6. [Exercise 05](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day00/src/ex05) - выборка имен людей, которые сделали заказ 7 января 2022 с идентификатором меню 13, 14 и 18, основанная на внутреннем запросе в строке **"SELECT"**. Запрещено использование **"IN"** и любого типа **"JOIN"**;

7. [Exercise 06](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day00/src/ex06) - выборка, основанная на Exercise 05, добавляющая новый столбец с именем "check_name", основанный на псевдокоде: ```if (person_name == 'Denis') then return true
    else return false.```
Запрещено использование **"IN"** и любого типа **"JOIN"**;

8. [Exercise 07](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day00/src/ex07) - выборка с именами, их идентификаторами, и интервалом (новый столбец "interval_info"), который определяется по псевдокоду: ```if (age >= 10 and age <= 20) then return 'interval #1'
else if (age > 20 and age < 24) then return 'interval #2'
else return 'interval #3'.``` Отсортировано по столбцу "interval_info" по возрастанию;

9. [Exercise 08](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day00/src/ex08) - выборка, возвращающая все столбцы из таблицы "person_order", со строками, чей идентификатор является четным числом. Отсортировано по возвращаемому идентификатору;

10. [Exercise 09](https://github.com/Shyrasya/SQL-Bootcamp/tree/main/SQL_beginner.Day00/src/ex09) - выборка, которая возвращает имена людей и названия пиццерий на основе таблицы "person_visits" с датой посещения в период с 7 по 9 января 2022 года (включительно), на основе внутреннего запроса **"FROM"**. Отсортировано по имени человека по возрастанию, названию пиццерии по убыванию. Запрещено использование любого типа **"JOIN"**.






