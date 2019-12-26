CREATE TABLE cats 
  ( 
     cat_id INT NOT NULL AUTO_INCREMENT, 
     name   VARCHAR(100), 
     breed  VARCHAR(100), 
     age    INT, 
     PRIMARY KEY (cat_id) 
  ); 
  
INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

-- Read commands

SELECT * FROM cats;

/* Try these
SELECT name FROM cats;

SELECT age FROM cats;

SELECT cat_id FROM cats;

SELECT name, age FROM cats;

SELECT cat_id, name, age FROM cats;

SELECT age, breed, name, cat_id FROM cats;

SELECT cat_id, name, age, breed FROM cats;
*/  

-- WHERE clause

SELECT * FROM cats WHERE age=4;

/* try these
SELECT * FROM cats WHERE name='Egg';

SELECT * FROM cats WHERE name='egG';
*/

-- Aliases

SELECT cat_id AS id, name FROM cats;
-- giving temporary names to columns

/* try these
SELECT name AS 'cat name', breed AS 'kitty breed' FROM cats;

DESC cats;
*/

-- UPDATE commands

UPDATE cats SET breed='Shorthair' WHERE breed='Tabby';
-- updation of same column values

/* try this
UPDATE cats SET age=14 WHERE name='Misty';
*/

-- DELETE commands

DELETE FROM cats WHERE name='Egg';
-- deleting rows with particular value

/* try these
SELECT * FROM cats;

SELECT * FROM cats WHERE name='egg';

DELETE FROM cats WHERE name='egg';

SELECT * FROM cats;

DELETE FROM cats;
-- this will delete all the values from the table, but table will still exist there.
*/