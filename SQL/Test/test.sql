CREATE DATABASE record_company;
USE record_company;
CREATE TABLE bands (
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE albums (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    release_year INT,
    PRIMARY KEY (id),
	band_id INT NOT NULL,
    FOREIGN KEY (band_id) REFERENCES bands(id)
);
SELECT * FROM bands;

INSERT INTO bands VALUES (5, 'Band 5');

INSERT INTO bands (name) 
VALUES ('Band 1');

INSERT INTO bands (name) 
VALUES ('Band 2'), ('Band 3'), ('Band 4');
-- Selecting all rows and columns from bands
SELECT * FROM bands;
-- Selecting only first 2 rows 
SELECT * FROM bands LIMIT 2;
-- Selecting only name column
SELECT name FROM bands;
-- Creating alias
SELECT id AS 'ID', name AS 'Band Name'
FROM bands;
-- To order the selected rows by name in alphabetical order in ascending order
SELECT * FROM bands ORDER BY name ASC;

-- To order the selected rows by name in alphabetical order in descending order
SELECT * FROM bands ORDER BY name DESC;

INSERT INTO albums (name, release_year, band_id)
VALUES ('Album 1', 1999, 1),
	   ('Album 2', 2000, 1),
       ('Album 3', 2001, 2),
       ('Album 4', 2002, 3),
       ('Album 5', NULL, 4);
-- To select all the rows and all the columns from albums table
SELECT * FROM albums;
-- To get all the names of the albums
SELECT name FROM albums;
-- To get the distinct names of the albums
SELECT DISTINCT name FROM albums;
-- In order to update the values
UPDATE albums
SET release_year = 1982 WHERE id = 5;

SELECT * FROM albums
WHERE release_year < 2000;
-- Selects all those names having 'bu' as a substring
SELECT * FROM albums 
WHERE name LIKE '%bu%';
-- Selects both the names of albums having bu as a substring and albums having 
-- band_id = 2
SELECT * FROM albums 
WHERE name LIKE '%bu%' OR band_id = 2;
-- Selects only those albums having release year = 2000 and band_id = 1
SELECT * FROM albums
WHERE release_year = 2000 and band_id = 1;

-- To select all those albums which are between 2000 and 2018
SELECT * FROM albums
WHERE release_year >= 2000 AND release_year <= 2018;
-- Alternative way
SELECT * FROM albums
WHERE release_year BETWEEN 2000 AND 2018;
-- Selects all those entries which are having no release year
SELECT * FROM albums WHERE release_year IS NULL;

-- To delete (a) rows 
DELETE FROM albums WHERE id = 5;
SELECT * FROM albums;

-- concepts of Joins (both inner and outer join)

-- 1. inner join
-- selects all those bands and albums having id = band_id
SELECT * FROM bands
JOIN albums ON bands.id = albums.band_id;
-- simple join and inner join is same
SELECT * FROM bands
INNER JOIN albums ON bands.id = albums.band_id;

-- 2. outer join
-- I) LEFT JOIN --> It basically returns all the values of the left table which is bands in this example
SELECT * FROM bands
LEFT JOIN albums ON bands.id = albums.band_id;

-- II) RIGHT JOIN --> It basically returns all the values of the right table which is albums in this example
SELECT * FROM bands
RIGHT JOIN albums ON bands.id = albums.band_id;

-- Inner join and left join are the two mostly used joins
-- Inner Join basically returns all those values of both the tables, which satisfy a given condition
-- whereas left join is used when we want to get all the values from the left table.
-- and right join being the flipped left join is very rarely used. It is used when we want to get all the table values / complete table 

-- Aggregate Functions and Group by statements
-- The mostly used aggregate functions are avg, sum and count
 
-- Avg aggregate function
SELECT AVG(release_year) FROM albums; 
 
-- Sum aggregate function
SELECT SUM(release_year) FROM albums;

-- Count aggregate function
SELECT COUNT(release_year) FROM albums;

-- The command on line number 116 returns only a single row as an answer to the count

SELECT band_id, COUNT(band_id) FROM albums 
GROUP BY band_id;

-- The above command basically returns a table which contains the frequency or count 
-- of each band_id

-- The below command basically counts the number of albums belonging to a particular
-- band name
SELECT b.name AS band_name, COUNT(a.id) AS num_albums
FROM bands AS b 
LEFT JOIN albums AS a ON b.id = a.band_id
GROUP BY b.id;

-- Inorder to get only those bands which have 1 as the number of albums
SELECT b.name AS band_name, COUNT(a.id) AS num_albums
FROM bands AS b
LEFT JOIN albums AS a ON b.id = a.band_id
GROUP BY b.id
HAVING num_albums = 1;

-- Inorder to get only those bands which have the band name as 'Band 2' we can use the following:-
SELECT b.name AS band_name, COUNT(a.id) AS num_albums
FROM bands AS b
LEFT JOIN albums AS a ON b.id = a.band_id
WHERE b.name = 'Band 2'
GROUP by b.id;