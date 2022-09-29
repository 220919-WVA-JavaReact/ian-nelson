CREATE TABLE inventory(
	inventory_id int PRIMARY KEY,
	"name" varchar(25),
	price decimal,
	description varchar(50),
	quanity int
);

INSERT INTO inventory
VALUES
(1001,'Hershey Bar', 3.45,'A small chocolate bar',50),
(1002,'Skittles',3.05,'A bag of rainbow colored candies',100),
(2003,'Gummy Bears',5.55,'A large bag of chewy fruit-flavored bears',48),
(2005,'Sour Gummy Worms',9.55,'A very large bag of gelatin worms',20),
(3008,'Lollipop',2.25,'A hard candy atop a stick',268),
(9007,'M&Ms',1.95,'A bag of small chocolate candies',58);

SELECT * FROM inventory;

UPDATE inventory
SET quanity = 48
WHERE inventory_id = 1001;

SELECT description FROM inventory;

SELECT "name", price FROM inventory;

UPDATE inventory 
SET description = 'A very large, delicious bag of worms'
WHERE inventory_id = 2005;

UPDATE inventory 
SET quanity = 100
WHERE inventory_id = 9007;

UPDATE inventory
SET price = 2.50
WHERE inventory_id = 3008;

CREATE TABLE employees(
	inventory int,
	"name" varchar(20),
	favorite_candy int REFERENCES inventory
);

INSERT INTO employees
VALUES
	(4001, 'Willy Wonka',2005),
	(4002, 'Milton Hershey', 1001),
	(4003, 'Franklin Mars', 9007),
	(4004, 'John Cadbury', NULL);
	
SELECT * FROM inventory;

--print the name of each employee and their favorite candy if they have one

SELECT e."name", i."name"
FROM employees e 
JOIN inventory i ON e.favorite_candy = i.inventory_id; 

--run a query to display the names of all candies and the name of the coorresponding employee who likes them
--print all all the candies, even if no employees like them

SELECT i."name", e."name"
FROM inventory i 
LEFT JOIN employees e ON i.inventory_id = e.favorite_candy;

--14 total cost to purcahse all remaining m&ms?

SELECT price*quanity FROM inventory WHERE inventory_id = 9007;

--completed

--15 return the name and price of the candy item that costs the least amount of money

SELECT "name", price FROM inventory WHERE price = (SELECT min(price) FROM inventory);

--15completed

--16 run a query to return the candy item with the larges quanity in inventory, return name&quanity

SELECT "name", quanity FROM inventory WHERE quanity = (SELECT max(quanity) FROM inventory);

--completed

--17 run a query to return the 3 most expensive candy items

SELECT * FROM inventory WHERE price = 

--not sure how to make it so it lists 3 values?