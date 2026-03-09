-- First Try It
select b.*,
       count(*) over (
         partition by shape
       ) bricks_per_shape,
       median ( weight ) over (
         partition by shape
       ) median_weight_per_shape
from   bricks b
order  by shape, weight, brick_id;

-- Second Try It
select b.brick_id, b.weight,
       round ( avg ( weight ) over (
         order by brick_id
       ), 2 ) running_average_weight
from   bricks b
order  by brick_id;

-- Third Try It
select b.*,
       min ( colour ) over (
         order by brick_id
         rows between 2 preceding and 1 preceding
       ) first_colour_two_prev,
       count (*) over (
         order by weight
         range between current row and 1 following
       ) count_values_this_and_next
from   bricks b
order  by weight;

-- Fourth Try It
with totals as (
  select b.*,
         sum ( weight ) over (
           PARTITION BY shape
         ) weight_per_shape,
         sum ( weight ) over (
           ORDER BY brick_id
         ) running_weight_by_id
  from   bricks b
)
select * from totals
where  weight_per_shape > 4 and running_weight_by_id > 4
order  by brick_id

-- Datalemur
WITH answer AS (
  SELECT 
    name,
    salary,
    department_id,
    DENSE_RANK() OVER (
      PARTITION BY department_id ORDER BY salary DESC) AS ranking
  FROM employee
)

SELECT
  d.department_name,
  an.name,
  an.salary
FROM answer AS an
INNER JOIN department AS d
  ON an.department_id = d.department_id
WHERE an.ranking <= 3
ORDER BY d.department_name ASC, an.salary DESC, an.name ASC;