/**
 * @author [Jai Miles]
 * @email [jaimiles23@gmail.com]
 * @create date 2020-06-14 13:58:04
 * @modify date 2020-06-14 13:58:04
 * @desc [
    Solution to Challenge 11: [Dynamic Documents](https://www.khanacademy.org/computing/computer-programming/sql/modifying-databases-with-sql/pc/challenge-dynamic-documents)

    Step 1: Update author's name

    Step 2: Delete row with title

    NOTES:
    - Potential challenges with delete statement deleting multiple rows. Implemented check that only one row exists.
 ]
 */


CREATE table documents (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    content TEXT,
    author TEXT);
    
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Fancy Stuff", "Ceiling wax, dragon wings, etc.");
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Living Things", "They're located in the left ear, you know.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Pirate Recipes", "Cherry pie, apple pie, blueberry pie.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Boat Supplies", "Rudder - guitar. Main mast - bed post.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Things I'm Afraid Of", "Talking to my parents, the sea, giant pirates, heights.");

SELECT * FROM documents;


/* Step 1 */
UPDATE documents SET author = "Jackie Draper" WHERE author = "Jackie Paper";

SELECT * FROM documents;


/* Step 2 */
SELECT * FROM documents WHERE title = "Things I'm Afraid Of";
DELETE FROM documents WHERE title = "Things I'm Afraid Of";

SELECT * FROM documents;