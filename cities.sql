-- Create a table called cities

CREATE TABLE cities (
  name VARCHAR(50),
  country VARCHAR(50),
  population INTEGER,
  area INTEGER
);

-- Add a single row into cities

INSERT INTO cities (name, country, population, area) 
VALUES ('Tokyo', 'Japan', 38505000, 8223);

-- Add multiple rows into cities

INSERT INTO cities (name, country, population, area) 
VALUES 
  ('Delhi', 'India', 28125000, 2240),
  ('Shanghai', 'China', 22125000, 4015),
  ('Sao Paulo', 'Brazil', 20935000, 3043);

-- Get all data out of cities

SELECT * FROM cities;

-- Get specific data out of cities

SELECT name, country FROM cities;

-- Create a generated column

SELECT 
  name, 
  country, 
  population / area AS population_density
FROM cities;

-- Generated column with VARCHARS

SELECT name || ', ' || country AS location
FROM cities;

-- With CONCAT

SELECT CONCAT(name, ', ', country) AS location
FROM cities;

-- Query with WHERE 
 
SELECT * -- 3
FROM cities -- 1
WHERE area > 4000; -- 2

-- WHERE in list

SELECT *
FROM cities
WHERE name IN ('Delhi', 'Shanghai');

-- Compound WHERE

SELECT *
FROM cities
WHERE name IN ('Delhi', 'Shanghai') AND area = 2240;

-- Calculated WHERE

SELECT *
FROM cities
WHERE population / area > 6000;

-- Run an update

UPDATE cities
SET population = 39505000
WHERE name = 'Tokyo';

-- Delete a row

DELETE FROM cities
WHERE name = 'Tokyo';