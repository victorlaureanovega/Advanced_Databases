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