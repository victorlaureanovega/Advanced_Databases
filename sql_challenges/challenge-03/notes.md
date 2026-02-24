Aggregate functions syntax:

SELECT AGG_FUNC(column_or_expression) AS aggregate_description, …
FROM mytable
WHERE constraint_expression;

NOTE: If there is a GROUP BY, we can filter using a HAVING after it