-- First Try It
-- 1.1
select colour from my_brick_collection
UNION
select colour from your_brick_collection
order by colour;

-- 1.2
select shape from my_brick_collection
UNION ALL
select shape from your_brick_collection
order  by shape;

-- Second Try It
-- 2.1
select shape from my_brick_collection
MINUS
select shape from your_brick_collection;

-- 2.2
select colour from my_brick_collection
INTERSECT
select colour from your_brick_collection
order  by colour;