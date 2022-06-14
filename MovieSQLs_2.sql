-- list movie titles
SELECT movies.title FROM movies;

-- list title and year of each movie in DESC order of year released.
SELECT movies.title, movies.year_released FROM movies
ORDER BY movies.year_released DESC;

-- list all cols for all records in directors -- ASCENDING alphabetical order (country)

SELECT * FROM directors
ORDER BY directors.country ASC;

-- list all cols in directors ASC order by country then last name

SELECT * FROM directors
ORDER BY directors.country ASC, directors.last_name ASC;

-- insert new record in directors 
INSERT INTO directors
VALUES(director_id, "Rob", "Reiner", "USA");

-- list last name and director_id for Rob Reiner

SELECT last_name, director_id
FROM directors
WHERE directors.last_name="Reiner";

-- insert new record in movies 

INSERT INTO movies
VALUES(movie_id, "The Princess Bride", 1987, (SELECT directors.director_id FROM directors WHERE directors.last_name="Reiner"));

-- inner join to display list of titles, years released and director last names
SELECT movies.title, movies.year_released, directors.last_name
FROM movies
INNER JOIN directors ON movies.movie_id=directors.director_id;

-- list all movies plus director full name order by last name ASC

SELECT movies.title, directors.first_name, directors.last_name
FROM movies
INNER JOIN directors ON movies.movie_id=directors.director_id
ORDER BY directors.last_name ASC;

-- use where to list director full name for The Incredibles

SELECT directors.first_name, directors.last_name
FROM movies, directors
WHERE movies.title="The Incredibles" AND movies.director_id=directors.director_id;


-- use join to list last name and country for director of Roma

SELECT directors.last_name, directors.country
FROM directors
INNER JOIN movies ON (SELECT movies.director_id FROM movies WHERE movies.title="Roma")=directors.director_id;

DELETE FROM movies WHERE movies.movie_id = 14;

SELECT * FROM movies;
SELECT * FROM directors;

DELETE FROM directors WHERE directors.director_id = 11;

-- bonus
SELECT directors.last_name AS last
FROM directors;

SELECT directors.first_name AS first
FROM directors;

SELECT movies.title
FROM movies
INNER JOIN directors ON movies.director_id=directors.director_id
WHERE directors.last_name = "Jackson";

ALTER TABLE movies
ADD earnings DOUBLE;

UPDATE movies
SET earnings=1344500
WHERE movie_id=1;

UPDATE movies
SET earnings=20000000
WHERE movie_id=2;

UPDATE movies
SET earnings=30000000
WHERE movie_id=3;

UPDATE movies
SET earnings=40000000
WHERE movie_id=4;

UPDATE movies
SET earnings=50000000
WHERE movie_id=5;

UPDATE movies
SET earnings=60000000
WHERE movie_id=6;

UPDATE movies
SET earnings=70000000
WHERE movie_id=7;

UPDATE movies
SET earnings=80000000
WHERE movie_id=8;

UPDATE movies
SET earnings=90000000
WHERE movie_id=9;

UPDATE movies
SET earnings=100000000
WHERE movie_id=10;

UPDATE movies
SET earnings=110000000
WHERE movie_id=11;

UPDATE movies
SET earnings=120000000
WHERE movie_id=12;

UPDATE movies
SET earnings=130000000
WHERE movie_id=13;

UPDATE movies
SET earnings=150000000
WHERE movie_id=15;

UPDATE movies
SET earnings=160000000
WHERE movie_id=16;

UPDATE movies
SET earnings=170000000
WHERE movie_id=17;

SELECT movies.title, earnings
FROM movies
ORDER BY earnings DESC;

SELECT movies.title, movies.earnings
FROM movies
WHERE earnings >= 10000000;













