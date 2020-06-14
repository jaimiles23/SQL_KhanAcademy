/**
 * @author [Jai Miles]
 * @email [jaimiles23@gmail.com]
 * @create date 2020-06-14 13:18:55
 * @modify date 2020-06-14 13:18:55
 * @desc [
     Solution to Challenge 3: [TODO list database stats](https://www.khanacademy.org/computing/computer-programming/sql/sql-basics/pc/challenge-todo-list-database-stats)

     Step 1: Insert another item into the TODO list

     Step 2: Determine how long it will take to complete TODO list
]
*/


CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);
INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
INSERT INTO todo_list VALUES (2, "vacuuming", 20);
INSERT INTO todo_list VALUES (3, "Learn some stuff on KA", 30);


/* Step 1 */
INSERT INTO todo_list (item, minutes) VALUES ("SQL Challenges", 25);


/* Step 2 */
SELECT SUM(minutes) FROM todo_list;

