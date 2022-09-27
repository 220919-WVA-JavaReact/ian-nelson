-- This is a comment in SQL
-- We use SQL to interact with Databases
-- So we need to define the structure of the database before we can start adding information to it

-- SQL provides a variety of ways to start, but the simplest is to just create a table

-- In SQL to create a talbe we need a couple things
-- We need a table name 
-- We need columns
-- We need datatypes

--What is a datatype
-- A specific type of data the information has to conform to

--SQL has a large variety of datatypes, know the main/most common ones
--Boolean - True or False 
--Integers - Positive of negative whole number
--Varchar(n) - This is a string (text) that can be UP TO n characters long
--Char(n) - This is a string (text) that MUST BE n characters long

CREATE TABLE products (

--All of my column definitions must fit in here
	productName varchar(25),
	productPrice int,
	department varchar(25),
	quantity int
);

CREATE TABLE pokemon (
-- pokedex numer, name, type1, type2, level, fully evolved
--to specify column names that are also key words, it's best practice to put them in double quotes
	"number" int,
	"name" varchar(20),
	type1 varchar(10), 
	type2 varchar(10),
	"level" int,
	fevolved bool
);

-- CTRL + ENTER allows you to run the command (hover over the create table area)
-- F5 to refresh tables, or right click on tables then refresh to update your table properly


-- SQL has a couple different types of Sublanguages within it
-- There are 4 or 5 depending on who you ask (vendor specific generally)
-- For our purposes we consider 5

-- DDL: Data Definition Language - Defining and manipulating structure or shema for out database (Like CREATE TABLE)

-- DML: Data Minpulatin Language - Ways to manipulate data(what we call CRUD methods) 
-- CRUD == Create, Read, Update, Delete 
-- Create New Data --> INSERT
-- Read existing data --> SELECT
-- Update existing data --> UPDATE
-- Delete existing data --> DELETE

-- to create new data we're going to insert into a data and specify the values we want to ADD 
-- Let's add info into the products table
-- When adding strings (text) we use single quotes, not double quotes
INSERT INTO products VALUES  ('Bike', 100, 'Sports', 1);

--Let's take a look at how our datatypes enforce the right type of info in each column
--INSERT INTO products VALUES('Toaster', 'Forty Dollars', 'Kitchen', 5);
INSERT INTO products VALUES('Toaster', 40, 'Kitchen', 5);

-- Lets try adding stuff to some columns specifcally but not all of them
INSERT INTO products (productName, productprice, department) VALUES ('Tomato', 1, 'Produce');

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'Grass', 'Poison', 23, FALSE);
INSERT INTO pokemon VALUES (3, 'Venusaur', 'Grass', 'Poison', 38, TRUE);

CREATE TABLE countries (
	"name" varchar(20),
	population int,
	continent varchar(20),
	developmentStatus varchar(20),
	gdpPerCapita decimal
);

INSERT INTO countries VALUES ('United States', 329500000, 'North America', 'Developed', 63543.58);
INSERT INTO countries VALUES ('China', 1402000000, 'Asia', 'Developing', 10500.40);
INSERT INTO countries VALUES ('Eritrea', 6081000, 'Africa', 'Low Development', 642.51);
INSERT INTO countries VALUES ('Brazil', 212600000, 'South America', 'Developing', 6796.84);
INSERT INTO countries VALUES ('Germany', 83240000, 'Europe', 'Developed', 45723.64);


