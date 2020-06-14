/**
 * @author [Jai Miles]
 * @email [jaimiles23@gmail.com]
 * @create date 2020-06-14 13:12:18
 * @modify date 2020-06-14 13:12:18
 * @desc [
    Solution to Challenge 2: [Box Office hits database](https://www.khanacademy.org/computing/computer-programming/sql/sql-basics/pc/challenge-box-office-hits-database)

    Step 1: Select all movies from provided table

    Step 2: Select all movies released after 2k, ordered by release year
 ]
 */


CREATE TABLE movies (
    id INTEGER PRIMARY KEY,
    name TEXT, 
    release_year INTEGER
    );

INSERT INTO movies VALUES (1, "Avatar", 2009);
INSERT INTO movies VALUES (2, "Titanic", 1997);
INSERT INTO movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
INSERT INTO movies VALUES (4, "Shrek 2", 2004);
INSERT INTO movies VALUES (5, "The Lion King", 1994);
INSERT INTO movies VALUES (6, "Disney's Up", 2009);
 
 
/* Step 1:*/
SELECT * FROM movies;


/* Step 2:*/
SELECT * FROM movies WHERE (release_year >= 2000) ORDER BY release_year;