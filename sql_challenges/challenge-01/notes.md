In the second exercise I did: SELECT * FROM movies WHERE year >= 2000 and year <= 2010;
but I think that a more correct solution would have been SELECT * FROM movies WHERE year BETWEEN 2000 AND 2010;

In the case of the third exercise, I think another solution could have been SELECT * FROM movies WHERE NOT(director = "John Lasseter");