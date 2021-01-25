-- •Write a query in SQL to find the name and year of the movies.
select mov_year, mov_title
from movie;
-- •Write a query in SQL to find the year when the movie American Beauty released.

select mov_year
from movie
where mov_title = 'American Beauty';

-- •Write a query in SQL to find the movie which was released in the year 1999
select mov-title 
from movie
where mov_year = 1999;

-- •Write a query in SQL to find the movies which was released before 1998
    select mov_title
    from movie
    where mov_year = 1998;
    
-- •Write a query in SQL to find the movie which was released in the year 1999
select mov-title 
from movie
where mov_year = 1999;

-- •Write a query in SQL to return the name of all reviewers and name of movies together in a single list
select rev_name , mov-title
from reviewer join movie;

-- Write a query in SQL to find the name of all reviewers who have rated 7 or more stars to their rating
SELECT rev_name , rev_stars
from reviewer join rating 
on reviewer.rev_id = rating.rev_id 
where rev_stars >= 7;

--  •Write a query in SQL to find the titles of all movies that have no ratings.
SELECT mov_title rev , rev_stars
from movie join rating 
on movie.mov_id = rating.mov_id
and num_o_ratings is null;

-- Write a query in SQL to find the name of all reviewers who have rated their ratings with a NULL value
SELECT rev_name , num_o_ratings
from reviewer join rating 
on reviewer.rev_id = rating.rev_id 
and num_o_ratings is null;

-- •Write a query in SQL to find the name of movie and director (first and last names) 
-- who directed a movie that casted a role for 'Eyes Wide Shut'.

select mov_title , concat(dir_fname,  "  " ,dir_lname) as dir_fullName
from movie , director
where mov_title = 'Eyes wide shut';