-- 10.1
SELECT MAX(Years_employed) FROM Employees;

-- 10.2
SELECT Role, AVG(Years_employed) FROM Employees GROUP BY Role;

-- 10.3
SELECT Building, SUM(Years_employed) FROM Employees GROUP BY Building;

-- 11.1
SELECT COUNT(*) FROM employees WHERE Role = 'Artist';

-- 11.2
SELECT Role, COUNT(Name) FROM Employees GROUP BY Role;

-- 11.3
SELECT Role, SUM(Years_employed) FROM Employees WHERE Role = 'Engineer';

-- Oracle FreeSQL tutorial
-- First Try It
SELECT COUNT(DISTINCT SHAPE) AS number_of_shapes,
       STDDEV(WEIGHT) AS distinct_weight_stddev
FROM   bricks;

-- Second Try It
SELECT DISTINCT shape, SUM(weight) AS shape_weight
FROM   bricks
GROUP  BY shape;

-- Third Try It
SELECT shape, SUM(weight)
FROM   bricks
GROUP  BY shape
HAVING SUM(weight) < 4;