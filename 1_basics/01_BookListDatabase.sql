/**
 * @author [Jai Miles]
 * @email [jaimiles23@gmail.com]
 * @create date 2020-06-14 12:51:03
 * @modify date 2020-06-14 12:51:03
 * @desc [
     Solution to Challenge 1: [Book list database](https://www.khanacademy.org/computing/computer-programming/sql/sql-basics/pc/challenge-book-list-database)

    Step 1:
    - Create table  with 3 columns: id, name, rating

    Step 2:
    - Insert 3 values
 ]
 */


/* Step 1*/

CREATE TABLE books (
    id INTEGER PRIMARY KEY, 
    name TEXT, 
    rating INTEGER
    );


/* Step 2*/
INSERT INTO books (name, rating) VALUES ("Automate the Boring Stuff", 5);
INSERT INTO books (name, rating) VALUES ("R for Data Science", 5);
INSERT INTO books (name, rating) VALUES ("Clean Python", 5);