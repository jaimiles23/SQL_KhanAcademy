/**
 * @author [Jai Miles]
 * @email [jaimiles23@gmail.com]
 * @create date 2020-06-14 13:54:53
 * @modify date 2020-06-14 13:54:53
 * @desc [
     Solution to Challenge 11: [Friendbook](https://www.khanacademy.org/computing/computer-programming/sql/relational-queries-in-sql/pc/challenge-friendbook)

     Step 1: Show people's names and their hobbies.CASE

     Step 2: Show the names of each pair of friends from friends table

     NOTES:
     - Step 2 starts with friends table, and accesses persons table twice. Thus, require 2 joins from persons table.
 ]
 */


CREATE TABLE persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT,
    age INTEGER);
    
INSERT INTO persons (fullname, age) VALUES ("Bobby McBobbyFace", "12");
INSERT INTO persons (fullname, age) VALUES ("Lucy BoBucie", "25");
INSERT INTO persons (fullname, age) VALUES ("Banana FoFanna", "14");
INSERT INTO persons (fullname, age) VALUES ("Shish Kabob", "20");
INSERT INTO persons (fullname, age) VALUES ("Fluffy Sparkles", "8");

CREATE table hobbies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    name TEXT);
    
INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");

CREATE table friends (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person1_id INTEGER,
    person2_id INTEGER);

INSERT INTO friends (person1_id, person2_id)
    VALUES (1, 4);
INSERT INTO friends (person1_id, person2_id)
    VALUES (2, 3);


/* Step 1 */
SELECT persons.fullname, hobbies.name
FROM persons
    JOIN hobbies
    ON persons.id = hobbies.person_id;


/* Step 2 */
select p1.fullname, p2.fullname 
FROM friends
    JOIN persons AS p1 
    on friends.person1_id = p1.id
    
    JOIN persons AS p2
    on friends.person2_id = p2.id;