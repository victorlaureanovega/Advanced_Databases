-- 6.1
SELECT t1.title, t2.Domestic_sales, t2.International_sales FROM Movies AS t1 JOIN Boxoffice AS t2 ON t1.id = t2.Movie_id;

-- 6.2
SELECT t1.title, t2.Domestic_sales, t2.International_sales FROM Movies AS t1 JOIN Boxoffice AS t2 ON t1.id = t2.Movie_id WHERE t2.International_sales > t2.Domestic_sales;

-- 6.3
SELECT t1.title, t2.rating FROM Movies AS t1 JOIN Boxoffice AS t2 ON t1.id = t2.Movie_id ORDER BY rating DESC;

-- 7.1
SELECT DISTINCT t1.Building_name FROM Buildings AS t1 JOIN employees AS t2 WHERE t1.Building_name = t2.Building;

-- 7.2
SELECT * FROM Buildings;

-- 7.3
SELECT DISTINCT t1.Building_name, t2.Role FROM Buildings AS t1 LEFT JOIN Employees AS t2 ON t1.Building_name = t2.Building;

-- Interview question
SELECT t1.page_id FROM pages AS t1 LEFT JOIN page_likes AS t2 ON t1.page_id = t2.page_id WHERE t2.page_id IS NULL ORDER BY page_id ASC;