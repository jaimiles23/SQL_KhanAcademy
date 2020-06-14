/**
 * @author [Jai Miles]
 * @email [jaimiles23@gmail.com]
 * @create date 2020-06-14 13:30:42
 * @modify date 2020-06-14 13:30:42
 * @desc [
     Solution to Challenge 7: [Gradebook](https://www.khanacademy.org/computing/computer-programming/sql/more-advanced-sql-queries/pc/challenge-gradebook)

     Step 1: Select names, number_grade, and calculate percent_completed.

     Step 2: Determine the frequency of letter grades.

     NOTES:
      - Uses the CASE control stucture to bin letter_grades.
 ]
 */


CREATE TABLE student_grades (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    number_grade INTEGER,
    fraction_completed REAL);
    
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winston", 90, 0.805);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winnefer", 95, 0.901);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winsteen", 85, 0.906);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Wincifer", 66, 0.7054);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winster", 76, 0.5013);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winstonia", 82, 0.9045);


/* Step 1 */
SELECT name, number_grade, 
ROUND(fraction_completed * 100) AS percent_completed
FROM student_grades;


/* Step 2 */
-- Develop structure for CASE
SELECT name, number_grade,
CASE
    WHEN number_grade > 90 THEN "A"
    WHEN number_grade > 80 THEN "B"
    WHEN number_grade > 70 THEN "C"
    ELSE "F"
END AS letter_grade
FROM student_grades;


-- Count instances of letter_grade
SELECT COUNT(*),
    CASE
        WHEN number_grade > 90 THEN "A"
        WHEN number_grade > 80 THEN "B"
        WHEN number_grade > 70 THEN "C"
        ELSE "F"
    END AS letter_grade
FROM student_grades
GROUP BY letter_grade;