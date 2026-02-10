-- 2.1
SELECT * FROM movies WHERE id=6;

-- 2.2
SELECT * FROM movies WHERE year>=2000 and year<=2010;

-- 2.3
SELECT * FROM movies WHERE NOT(year>=2000 and year<=2010);

-- 2.4
SELECT * FROM movies LIMIT 5;