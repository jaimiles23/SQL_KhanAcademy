/**
 * @author [Jai Miles]
 * @email [jaimiles23@gmail.com]
 * @create date 2020-06-14 14:00:50
 * @modify date 2020-06-14 14:00:50
 * @desc [
    Solution to Challenge 12: [Clothing Alterations](https://www.khanacademy.org/computing/computer-programming/sql/modifying-databases-with-sql/pc/challenge-clothing-alterations)

    Step 1: Add price column to table

    Step 2: Update item pricing

    Step 3: Insert new item
 ]
 */


CREATE TABLE clothes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    design TEXT);
    
INSERT INTO clothes (type, design)
    VALUES ("dress", "pink polka dots");
INSERT INTO clothes (type, design)
    VALUES ("pants", "rainbow tie-dye");
INSERT INTO clothes (type, design)
    VALUES ("blazer", "black sequin");


/* Step 1 */
ALTER TABLE clothes
ADD price INTEGER;

SELECT * FROM clothes;


/* Step 2 */
UPDATE clothes 
SET price = 10 WHERE id = 1;
UPDATE clothes
SET price = 20 WHERE id = 2;
UPDATE clothes
SET price = 30 WHERE id = 3;

SELECT * FROM clothes;


/* Step 3 */
INSERT INTO clothes (type, design, price)
    VALUES ("t-shirt", "fashionable shirt with holes", 100);
    
SELECT * FROM clothes;