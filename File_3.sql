create database cats;
use cats;
create table cats(name varchar(10), age int);

insert into cats(name, age) values('blue',10);
-- inserting DATA to tables

insert into cats(age, name) values(1,'broad');
-- columns should match the order of values

insert into cats values('chilli',5);
-- if default columns is used

INSERT INTO cats 
            (name, age) 
VALUES      ('cat4', 9), 
            ('cat5', 3), 
            ('cat6', 2);
-- multiple inserting
            
SELECT * FROM cats;
-- retrieving DATA

/* show warnings;       If warnings are generated   */

INSERT INTO cats(name) VALUES('Alabama');
-- inserting without age, as the columns value can be NULL

INSERT INTO cats() VALUES();
-- inserting without name,age

SELECT * FROM cats;

CREATE TABLE cats2
  (
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
  );
-- creating another table, using NOT NULL keyword

INSERT INTO cats2(name) VALUES('Texas');
-- ageless cat, "default" value will come into play

/* SELECT * FROM cats2; */

CREATE TABLE cats3
  (
    name VARCHAR(20) DEFAULT 'no name provided',
    age INT DEFAULT 99
  );
-- using default in column definition

INSERT INTO cats3(age) VALUES(13);
-- if not given value

CREATE TABLE cats4
  (
    name VARCHAR(20) NOT NULL DEFAULT unnamed,
    age INT NOT NULL DEFAULT 99
  );
-- combining NOT NULL and DEFAULT

CREATE TABLE unique_cats
  (
    cat_id INT NOT NULL,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
  );
-- primary key usage 

/*
INSERT INTO unique_cats(cat_id, name, age) VALUES(1, 'Fred', 23);

INSERT INTO unique_cats(cat_id, name, age) VALUES(2, 'Louise', 3);

INSERT INTO unique_cats(cat_id, name, age) VALUES(1, 'James', 3);
*/

CREATE TABLE unique_cats2 (
    cat_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
);
-- incrementing with each input

/*
INSERT INTO unique_cats2(name, age) VALUES('Skippy', 4);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Skippy', 4);
*/