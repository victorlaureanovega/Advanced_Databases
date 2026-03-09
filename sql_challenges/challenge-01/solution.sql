-- 1.1 
SELECT title FROM movies;

-- 1.2
SELECT director FROM movies;

-- 1.3
SELECT title, director FROM movies;

-- 1.4
SELECT title, year FROM movies;

-- 1.5
SELECT * FROM movies;

-- 2.1
SELECT * FROM movies WHERE id=6;

-- 2.2
SELECT * FROM movies WHERE year >= 2000 and year <= 2010;

-- 2.3
SELECT * FROM movies WHERE NOT(year >= 2000 and year <= 2010);

-- 2.4
SELECT * FROM movies LIMIT 5;

-- 3.1
SELECT * FROM movies WHERE title LIKE "%Toy Story%";

-- 3.2
SELECT * FROM movies WHERE director = "John Lasseter";

-- 3.3
SELECT * FROM movies WHERE director != "John Lasseter";

-- 3.4
SELECT * FROM movies WHERE title LIKE "%WALL-%";

-- 4.1
SELECT DISTINCT director FROM movies ORDER BY director ASC;

-- 4.2
SELECT * FROM movies ORDER BY year DESC LIMIT 4;

-- 4.3
SELECT * FROM movies ORDER BY title ASC LIMIT 5;

-- 4.4
SELECT * FROM movies ORDER BY title ASC LIMIT 5 OFFSET 5;

-- 5.1
SELECT city, population FROM north_american_cities WHERE country = "Canada";

-- 5.2
SELECT * FROM north_american_cities WHERE country = "United States" ORDER BY latitude DESC;

-- 5.3
SELECT * FROM north_american_cities WHERE longitude < -87.629798 ORDER BY longitude ASC;

-- 5.4
SELECT * FROM north_american_cities WHERE country = "Mexico" ORDER BY population DESC LIMIT 2;

-- 5.5
SELECT * FROM north_american_cities WHERE country = "United States" ORDER BY population DESC LIMIT 2 OFFSET 2;