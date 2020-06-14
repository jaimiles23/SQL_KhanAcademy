/**
 * @author [Jai Miles]
 * @email [jaimiles23@gmail.com]
 * @create date 2020-06-14 13:21:23
 * @modify date 2020-06-14 13:21:23
 * @desc [

    Solution to Challenge 4: [Karaoke song selector](https://www.khanacademy.org/computing/computer-programming/sql/more-advanced-sql-queries/pc/challenge-karaoke-song-selector)
    
     Step 1: Select all song titles

     Step 2: Select songs with epic mood or released after 1990

     Step 3: Select songs with epic mood, released after 1990, and shorter than 4 minutes.
 ]
 */


CREATE TABLE songs (
    id INTEGER PRIMARY KEY,
    title TEXT,
    artist TEXT,
    mood TEXT,
    duration INTEGER,
    released INTEGER);
    
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Bohemian Rhapsody", "Queen", "epic", 60, 1975);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Let it go", "Idina Menzel", "epic", 227, 2013);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("I will survive", "Gloria Gaynor", "epic", 198, 1978);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Twist and Shout", "The Beatles", "happy", 152, 1963);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("La Bamba", "Ritchie Valens", "happy", 166, 1958);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("I will always love you", "Whitney Houston", "epic", 273, 1992);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Sweet Caroline", "Neil Diamond", "happy", 201, 1969);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Call me maybe", "Carly Rae Jepsen", "happy", 193, 2011);
    
    
/* Step 1 */
SELECT title FROM songs;


/* Step 2 */
SELECT title FROM songs WHERE (mood = "epic") OR (released > 1990);


/* Step 3 */
SELECT title FROM songs WHERE (mood = "epic") AND (released > 1990) AND (duration < 240);