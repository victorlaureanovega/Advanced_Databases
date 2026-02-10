-- 3.1
SELECT * FROM movies WHERE title LIKE "%Toy Story%";

-- 3.2
SELECT * FROM movies WHERE director = "John Lasseter";

-- 3.3
SELECT * FROM movies WHERE director != "John Lasseter";

-- 3.4
SELECT * FROM movies WHERE title LIKE "%WALL-%";